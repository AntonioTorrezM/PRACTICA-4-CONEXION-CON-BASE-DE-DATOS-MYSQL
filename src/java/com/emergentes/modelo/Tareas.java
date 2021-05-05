package com.emergentes.modelo;

public class Tareas {
    private int id;
    private String tarea;
    private int prioridad;
    private int completado;

    public Tareas() {
        this.id = 0;
        this.tarea = "";
        this.prioridad = 0;
        this.completado = 0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String tarea) {
        this.tarea = tarea;
    }

    public int getPrioridad() {
        return prioridad;
    }

    public void setPrioridad(int prioridad) {
        this.prioridad = prioridad;
    }

    public int getCompletado() {
        return completado;
    }

    public void setCompletado(int completado) {
        this.completado = completado;
    } 
}
