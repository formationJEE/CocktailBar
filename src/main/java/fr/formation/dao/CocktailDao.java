package fr.formation.dao;

import fr.formation.entity.Cocktail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CocktailDao extends JpaRepository<Cocktail, Integer> {

}
