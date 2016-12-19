package fr.formation.service;

import fr.formation.dao.CocktailDao;
import fr.formation.entity.Cocktail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CocktailService {

    @Autowired
    private CocktailDao dao;

    public List<Cocktail> getAll(){
        return this.dao.findAll();
    }

    @Transactional
    public void create(Cocktail cocktail){
        this.dao.save(cocktail);
    }

    @Transactional
    public void update(Cocktail cocktail){
        this.dao.save(cocktail);
    }

    @Transactional
    public void del(int id){
        this.dao.delete(id);
    }
}
