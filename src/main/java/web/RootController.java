package web;

import com.SpringBootWebApplication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import web.controllers.MealController;

@Controller
public class RootController {

    @Autowired
    private ApplicationContext applicationContext;
    @RequestMapping(value = "/",method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE )
    public String
    welcome(Model model) {

        return "first";
    }
    @GetMapping("/users")
    public String users() {
        return "modelPages/users";
    }

    @GetMapping(value = "/places")
    public String login() {
        return "modelPages/places";
    }



    @GetMapping("/menuMeal")
    public String menuMeal() {
        return "modelPages/menuMeal";
    }

    @GetMapping(value = "/placeMenu")
    public String placeMenu() {
        return "modelPages/placeMenu";
    }


    @GetMapping("/voteStory")
    public String voteStory() {
        return "modelPages/voteStory";
    }
}
