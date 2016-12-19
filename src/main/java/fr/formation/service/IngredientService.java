package fr.formation.service;

import fr.formation.dao.IngredientDao;
import fr.formation.entity.Ingredient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.beans.Transient;
import java.util.List;

@Service
public class IngredientService {

    @Autowired
    private IngredientDao dao;

    public List<Ingredient> getAll(){
        return this.dao.findAll();
    }

    @Transactional
    public void create(Ingredient ingredient){
        this.dao.save(ingredient);
    }

    @Transactional
    public void update(Ingredient ingredient){
        this.dao.save(ingredient);
    }

    @Transactional
    public void del(int id){
        this.dao.delete(id);
    }

}
