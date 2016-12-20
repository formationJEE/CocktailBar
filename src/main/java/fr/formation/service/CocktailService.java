package fr.formation.service;

import fr.formation.dao.CocktailDao;
import fr.formation.dao.IngredientCocktailDao;
import fr.formation.dao.IngredientDao;
import fr.formation.entity.Cocktail;
import fr.formation.entity.IngredientCocktail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CocktailService {

    @Autowired
    private CocktailDao cocktailDao;

    @Autowired
    private IngredientDao ingredientDao;

    @Autowired
    private IngredientCocktailDao ingredientCocktailDao;

    public List<Cocktail> getAll(){
        return this.cocktailDao.findAll();
    }

    @Transactional
    public void create(Cocktail cocktail){
        this.cocktailDao.save(cocktail);
    }

    @Transactional
    public void update(Cocktail cocktail){
        this.cocktailDao.save(cocktail);
    }

    @Transactional
    public void del(int id){
        this.cocktailDao.delete(id);
    }

    public List<IngredientCocktail> findall(){
        return this.ingredientCocktailDao.findAll();
    }

    @Transactional
    public void addIngredientToCocktail(Integer cocktailId, Integer ingredientId, Integer quantity){

        IngredientCocktail ingredientCocktail = new IngredientCocktail();
        ingredientCocktail.setCocktail(this.cocktailDao.findOne(cocktailId));
        ingredientCocktail.setIngredient(this.ingredientDao.findOne(ingredientId));
        ingredientCocktail.setQuantity(quantity);

        this.ingredientCocktailDao.save(ingredientCocktail);
    }

    public Cocktail get(Integer id){
        return this.cocktailDao.findOne(id);
    }
}
