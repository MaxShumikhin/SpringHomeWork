package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import project.entity.Adress;
import project.entity.Info;
import project.entity.User;
import project.service.UtilService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AppController {

    private UtilService utilService;

    @Autowired
    public void setUtilService(UtilService utilService) {
        this.utilService = utilService;
    }

    @RequestMapping("/")
    public String mainPage() {
        return "mainPage";
    }

    @RequestMapping(value = "enter", method = RequestMethod.GET)
    public String goToEnterPage() {
        return "enter";
    }

    @RequestMapping(value = "enter", method = RequestMethod.POST)
    public ModelAndView enter(User user) {
        if (utilService.checkLoginAndPassword(user)) {
            return menu();
        } else {
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setViewName("enter");
            return modelAndView;
        }
    }

    @RequestMapping(value = "menu", method = RequestMethod.GET)
    public ModelAndView menu() {
        List<User> users = utilService.allUsers();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("menu");
        modelAndView.addObject("users", users);
        return modelAndView;
    }

    @RequestMapping(value = "registration", method = RequestMethod.GET)
    public String goToRegistrationPage() {
        return "registration";
    }

    @RequestMapping(value = "registration", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user, Info info, Adress adress) {
        user.setInfo(info);
        user.setAdress(adress);
        if (utilService.checkLogin(user)) {
            utilService.saveUser(user);
            return "registrationGood";
        }
        return "registrationBad";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String goToUpdatePage(@PathVariable("id") int id) {
        return "update";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public ModelAndView updateUser(@ModelAttribute("user") User user) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/");
        utilService.updateUser(user);
        return modelAndView;
    }
}
