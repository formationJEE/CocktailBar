package fr.formation.controller;

import fr.formation.entity.Cocktail;
import fr.formation.service.CocktailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/cocktails")
public class CocktailController {

    @Autowired
    private CocktailService service;

    @RequestMapping
    public ModelAndView list(){

        final ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("cocktails");
        modelAndView.addObject("cocktails", this.service.getAll());
        return modelAndView;
    }

    @RequestMapping("/add")
    public ModelAndView add(){

        final ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("addCocktail");
        return modelAndView;
    }

    @RequestMapping("/edit")
    public ModelAndView edit(HttpServletRequest request){

        Integer id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        Double prix = Double.parseDouble(request.getParameter("prix"));
        Integer withAlcohol = Integer.parseInt(request.getParameter("withAlcohol"));

        Cocktail cocktail = new Cocktail(id, name, prix, withAlcohol);

        final ModelAndView mav = new ModelAndView();
        mav.addObject("cocktail", cocktail);
        mav.setViewName("addCocktail");
        return mav;
    }

    @RequestMapping("/del")
    public String del(HttpServletRequest request){
        Integer id = Integer.parseInt(request.getParameter("id"));
        service.del(id);

        return "redirect:/cocktails.html";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String newCocktail(@RequestParam String name,
                              @RequestParam double prix,
                              @RequestParam int withAlcohol){

        service.create(new Cocktail(name, prix, withAlcohol));
        return "redirect:/cocktails.html";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editIngredient(@RequestParam Integer id,
                                 @RequestParam String name,
                                 @RequestParam Double prix,
                                 @RequestParam Integer withAlcohol){

        service.update(new Cocktail(id, name, prix, withAlcohol));

        return "redirect:/cocktails.html";
    }
}
