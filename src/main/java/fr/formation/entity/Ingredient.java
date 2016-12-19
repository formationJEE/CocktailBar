package fr.formation.entity;

import java.io.Serializable;

public class Ingredient implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private int state;

    private String name;

    public Ingredient() {
    }

    public Ingredient(int state, String name) {
        this.state = state;
        this.name = name;
    }

    public Ingredient(Integer id, int state, String name) {
        this.id = id;
        this.state = state;
        this.name = name;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
