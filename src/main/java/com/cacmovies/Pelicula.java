package com.cacmovies;

import java.sql.Date;

public class Pelicula {

    private int idPelicula;
    private String titulo;
    private Date fechaDeLanzamiento;
    private String genero;
    private String duracion;
    private String director;
    private String reparto;
    private String sinopsis;
    private String imagen;

    public Pelicula() {
    }

    public Pelicula(int idPelicula, String titulo, Date fechaDeLanzamiento, String genero, String duracion, String director, String reparto, String sinopsis, String imagen) {
        this.idPelicula = idPelicula;
        this.titulo = titulo;
        this.fechaDeLanzamiento = fechaDeLanzamiento;
        this.genero = genero;
        this.duracion = duracion;
        this.director = director;
        this.reparto = reparto;
        this.sinopsis = sinopsis;
        this.imagen = imagen;
    }

    public int getIdPelicula() {
        return idPelicula;
    }

    public void setIdPelicula(int idPelicula) {
        this.idPelicula = idPelicula;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Date getFechaDeLanzamiento() {
        return fechaDeLanzamiento;
    }

    public void setFechaDeLanzamiento(Date fechaDeLanzamiento) {
        this.fechaDeLanzamiento = fechaDeLanzamiento;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getReparto() {
        return reparto;
    }

    public void setReparto(String reparto) {
        this.reparto = reparto;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getDuracion() {
        return duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getSinopsis() {
        return sinopsis;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }
}
