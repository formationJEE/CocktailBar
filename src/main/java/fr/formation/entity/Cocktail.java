package fr.formation.entity;

public class Cocktail {
    private int id;
    private String name;
    private double prix;
    private int withAlcohol;

    public Cocktail() {

    }

    public Cocktail(int id, String name, double prix, int withAlcohol) {
        this.id = id;
        this.name = name;
        this.prix = prix;
        this.withAlcohol = withAlcohol;
    }

    public Cocktail(String name, double prix, int withAlcohol) {
        this.name = name;
        this.prix = prix;
        this.withAlcohol = withAlcohol;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public int getWithAlcohol() {
        return withAlcohol;
    }

    public void setWithAlcohol(int withAlcohol) {
        this.withAlcohol = withAlcohol;
    }
}
