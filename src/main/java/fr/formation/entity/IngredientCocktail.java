package fr.formation.entity;

public class IngredientCocktail {
    private int ingredientId;
    private int cocktailId;
    private int quantity;

    public IngredientCocktail() {
    }

    public IngredientCocktail(int ingredientId, int cocktailId, int quantity) {
        this.ingredientId = ingredientId;
        this.cocktailId = cocktailId;
        this.quantity = quantity;
    }

    public int getIngredientId() {
        return ingredientId;
    }

    public void setIngredientId(int ingredientId) {
        this.ingredientId = ingredientId;
    }

    public int getCocktailId() {
        return cocktailId;
    }

    public void setCocktailId(int cocktailId) {
        this.cocktailId = cocktailId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
