package fr.formation.entity;


import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class Cocktail {

    private int id;

    @NotNull
    @Pattern(regexp = "[^/:!;.,?+-=@]+")
    private String name;

    @NotNull
    @Min(0)
    private double prix;

    private boolean withAlcohol;

    public Cocktail() {

    }

    public Cocktail(int id, String name, double prix, boolean withAlcohol) {
        this.id = id;
        this.name = name;
        this.prix = prix;
        this.withAlcohol = withAlcohol;
    }

    public Cocktail(String name, double prix, boolean withAlcohol) {
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

    public boolean isWithAlcohol() {
        return withAlcohol;
    }

    public void setWithAlcohol(boolean withAlcohol) {
        this.withAlcohol = withAlcohol;
    }
}
