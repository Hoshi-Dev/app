package com.cacmovies;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.util.StdDateFormat;

import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import java.io.IOException; 
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList; 
import java.util.List; 

@WebServlet("/peliculas")
public class Controlador extends HttpServlet{

    @Override
    protected void doOptions(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type, Authorization");
        response.setStatus(HttpServletResponse.SC_OK);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Configurar cabeceras CORS
        response.setHeader("Access-Control-Allow-Origin", "*"); 
        response.setHeader("Access-Control-Allow-Methods", "*");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type, Authorization"); 
        Conexion conexion = new Conexion();  
        Connection conn = conexion.getConnection();  

        try {
            ObjectMapper mapper = new ObjectMapper(); 
            mapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
            DateFormat df = new SimpleDateFormat("dd-MM-yyyy"); 
            mapper.setDateFormat(df);
            Pelicula pelicula = mapper.readValue(request.getInputStream(), Pelicula.class);  
        
            String query = "INSERT INTO peliculas (titulo, fecha_lanzamiento, genero, duracion, director, reparto, sinopsis, imagen) VALUES (?, ?, ?, ?, ?, ?, ?,?)";
            PreparedStatement statement = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);  
        
            statement.setString(1, pelicula.getTitulo());
            statement.setDate(2, pelicula.getFechaDeLanzamiento());
            statement.setString(3, pelicula.getGenero());
            statement.setString(4, pelicula.getDuracion());
            statement.setString(5, pelicula.getDirector());
            statement.setString(6, pelicula.getReparto());
            statement.setString(7, pelicula.getSinopsis());
            statement.setString(8, pelicula.getImagen());
        
            statement.executeUpdate();  
        
            ResultSet rs = statement.getGeneratedKeys();
            if (rs.next()) {
                Long idPeli = rs.getLong(1);  
                
                
                response.setContentType("application/json");  
                String json = mapper.writeValueAsString(idPeli);  
                response.getWriter().write(json);  
            }
            
            response.setStatus(HttpServletResponse.SC_CREATED);  
            
        } catch (SQLException e) {
            e.printStackTrace();  
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);  
            enviarErrorJSON(response, "Error al insertar en la base de datos");
        } catch (IOException e) {
            e.printStackTrace();  
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);  
            conexion.close();  
            enviarErrorJSON(response, "Error de entrada/salida");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Access-Control-Allow-Origin", "*"); 
        response.setHeader("Access-Control-Allow-Methods", "*"); 
        response.setHeader("Access-Control-Allow-Headers", "Content-Type, Authorization"); 
        Conexion conexion = new Conexion();  
        Connection conn = conexion.getConnection();  

        try {
            
            String query = "SELECT * FROM peliculas";
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);  

            List<Pelicula> peliculas = new ArrayList<>(); 

            
            while (resultSet.next()) {
                Date fechaLanzamiento = resultSet.getDate("fecha_lanzamiento");
                if (fechaLanzamiento != null && fechaLanzamiento.toString().equals("0000-00-00")) {
                    fechaLanzamiento = null;
                }
                
                Pelicula pelicula = new Pelicula(
                    resultSet.getInt("id_pelicula"),
                    resultSet.getString("titulo"), 
                    fechaLanzamiento,
                    resultSet.getString("genero"),
                    resultSet.getString("duracion"),
                    resultSet.getString("director"),
                    resultSet.getString("reparto"),
                    resultSet.getString("sinopsis"),
                    resultSet.getString("imagen")
                );
                peliculas.add(pelicula);  
            }

            ObjectMapper mapper = new ObjectMapper(); 
            //Configuración para el formato de la fecha
            mapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
            mapper.setDateFormat(new StdDateFormat().withColonInTimeZone(true));
            String json = mapper.writeValueAsString(peliculas);  
            response.setContentType("application/json"); 
            response.getWriter().write(json); 
        } catch (SQLException e) {
            e.printStackTrace();  
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);  
            enviarErrorJSON(response, "Error al obtener datos de la base de datos");
        } finally {
            conexion.close();  
        }
        }

        private void enviarErrorJSON(HttpServletResponse response, String mensaje) throws IOException {
            response.setContentType("application/json");
            response.getWriter().write("{\"error\": \"" + mensaje + "\"}");
        }
}
