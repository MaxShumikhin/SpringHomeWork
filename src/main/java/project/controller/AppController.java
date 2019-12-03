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
import project.service.CheckService;
import project.service.UtilService;

import java.util.List;

@Controller
public class AppController {

    private UtilService utilService;

    private CheckService checkService;

    @Autowired
    public void setCheckService(CheckService checkService) {
        this.checkService = checkService;
    }

    @Autowired
    public void setUtilService(UtilService utilService) {
        this.utilService = utilService;
    }

    @RequestMapping("/")
    public String mainPage(Model model) {
        return "mainPage";
    }

    @RequestMapping(value = "enter", method = RequestMethod.GET)
    public String goToEnterPage() {
        return "enter";
    }

    @RequestMapping(value = "enter", method = RequestMethod.POST)
    public ModelAndView enter(User user) {
        if (checkService.checkLoginAndPassword(user) && checkService.checkRoleUserDao(user)) {
            return menu();
        } else if (checkService.checkLoginAndPassword(user) && !checkService.checkRoleUserDao(user)) {
            return userMenu(user);
        } else {
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setViewName("enter");
            return modelAndView;
        }
    }

    @RequestMapping(value = "userMenu", method = RequestMethod.GET)
    public ModelAndView userMenu(User user) {
        List<User> user1 = utilService.oneUser(user);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("userMenu");
        modelAndView.addObject("user", user1);
        return modelAndView;
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
        if (0 < info.getAge() && info.getAge() < 120) {
            user.setInfo(info);
            user.setAdress(adress);
            if (checkService.checkLogin(user)) {
                utilService.saveUser(user);
                return "registrationGood";
            }
        }
        return "registrationBad";
    }

    @RequestMapping(value = "update/{idUser}", method = RequestMethod.GET)
    public ModelAndView editPage(@PathVariable("idUser") int id) {
        User user = utilService.findUserById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("update");
        modelAndView.addObject("user", user);
        return modelAndView;
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String updateUser(@ModelAttribute("user") User user, Info info, Adress adress) {
        if (0 < info.getAge() && info.getAge() < 120) {
            user.setAdress(adress);
            user.setInfo(info);
            utilService.updateUser(user);
            return "redirect: menu";
        } else return "redirect: menu";
    }

    @RequestMapping(value = "userUpdate/{idUser}", method = RequestMethod.GET)
    public ModelAndView editPageForUser(@PathVariable("idUser") int id) {
        User user = utilService.findUserById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("userUpdate");
        modelAndView.addObject("user", user);
        return modelAndView;
    }

    @RequestMapping(value = "userUpdate", method = RequestMethod.POST)
    public ModelAndView updateOneUser(@ModelAttribute("user") User user, Info info, Adress adress) {
        if (0 < info.getAge() && info.getAge() < 120) {
            user.setAdress(adress);
            user.setInfo(info);
            utilService.updateUser(user);
            if (!checkService.checkRoleUserDao(user)) {
                return userMenu(user);
            } else {
                ModelAndView modelAndView = new ModelAndView();
                modelAndView.setViewName("mainPage");
                return modelAndView;
            }
        } else {
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setViewName("mainPage");
            return modelAndView;
        }
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public String goToDeletePage() {
        return "delete";
    }

    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public String deleteUser(int id) {
        User user = utilService.findUserById(id);
        utilService.deleteUser(user);
        return "redirect: menu";
    }
}
