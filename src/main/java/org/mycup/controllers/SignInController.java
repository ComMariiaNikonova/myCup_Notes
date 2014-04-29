package org.mycup.controllers;

import org.mycup.datastore.dao.RoleDAO;
import org.mycup.datastore.dao.UserDAO;
import org.mycup.datastore.entity.Role;
import org.mycup.datastore.entity.User;
import org.mycup.enums.UserRole;
import org.mycup.services.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Created by mariiarichka on 24.04.14.
 */
@Controller
public class SignInController {


    public static final String PATH_TO_HOME_PAGE = "/protected/libMainCombined";

    @Autowired
    private UserService service;


    private static final Logger log = LoggerFactory.getLogger(SignInController.class);
/*For Rest API:*/
 /*   @RequestMapping(value="/auth/CreateNewUser", method=RequestMethod.POST)
    public @ResponseBody User create(
            @RequestParam String name,
            @RequestParam String password) {

        Set <Role> roles = new HashSet<Role>();
        User newUser = new User();
        Role newRole = new Role();

        newRole.setRole(UserRole.USER);

        //set Set of roles
        newUser.setRoles(roles);
        //set roles
        newUser.getRoles().add(newRole);
        newUser.setMail(name);
        newUser.setPassword(password);
*//*        newUser.setMail("test13@test");
        newUser.setPassword("test")*//*;


        newUser.setRoles(newUser.getRoles());
        return service.createUser (newUser);
    }*/

    @RequestMapping(value="/auth/CreateNewUser", method=RequestMethod.POST)
    public String createUser (@RequestParam String name,
                              @RequestParam String password) {

        Set <Role> roles = new HashSet<Role>();
        User newUser = new User();
        Role newRole = new Role();

        newRole.setRole(UserRole.USER);


        newUser.setRoles(roles);

        newUser.getRoles().add(newRole);
        newUser.setMail(name);
        newUser.setPassword(password);
/*      newUser.setMail("test13@test");
        newUser.setPassword("test");*/


        newUser.setRoles(newUser.getRoles());
        service.createUser (newUser);
        return "redirect:home";
        }

    @RequestMapping(value = "home", method = RequestMethod.GET)
    public ModelAndView provideHomePage(Map<String, ?> model) {
        log.info("Welcome controller works correctly for home page");
        return new ModelAndView(PATH_TO_HOME_PAGE, model);
    }
    }

