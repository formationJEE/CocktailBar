package fr.formation.dao;

import fr.formation.entity.IngredientCocktail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IngredientCocktailDao extends JpaRepository<IngredientCocktail, Integer> {

}
