package fr.formation.controller;

import fr.formation.entity.Ingredient;
import fr.formation.service.IngredientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/ingredients")
public class IngredientController {

    @Autowired
    private IngredientService service;

    @RequestMapping
    public ModelAndView list(){

        final ModelAndView mav = new ModelAndView();
        mav.setViewName("ingredients");
        mav.addObject("ingredients", this.service.getAll());
        return mav;
    }

    @RequestMapping("/add")
    public ModelAndView add(){

        final ModelAndView mav = new ModelAndView();
        mav.setViewName("addIngredient");
        return mav;
    }
    @RequestMapping("/edit")
    public ModelAndView edit(HttpServletRequest request){

        Integer id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        Integer state = Integer.parseInt(request.getParameter("state"));

        Ingredient ingredient = new Ingredient(id, state, name);

        final ModelAndView mav = new ModelAndView();
        mav.addObject("ingredient", ingredient);
        mav.setViewName("addIngredient");
        return mav;
    }

    @RequestMapping("/del")
    public String del(HttpServletRequest request){
        Integer id = Integer.parseInt(request.getParameter("id"));
        service.del(id);

        return "redirect:/ingredients.html";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String newIngredient(HttpServletRequest request){
        String name = request.getParameter("name");
        Integer state = Integer.parseInt(request.getParameter("state"));
        service.create(new Ingredient(state, name));

        return "redirect:/ingredients.html";
    }

    @RequestMapping(value = "/add2", method = RequestMethod.POST)
    public String newIngredient2(@RequestParam String name, @RequestParam Integer state){

        service.create(new Ingredient(state, name));

        return "redirect:/ingredients.html";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editIngredient(@RequestParam Integer id, @RequestParam String name, @RequestParam Integer state){

        service.update(new Ingredient(id, state, name));

        return "redirect:/ingredients.html";
    }

}
