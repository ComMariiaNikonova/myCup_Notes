package org.mycup.controllers;

import org.mycup.datastore.dao.RoleDAO;
import org.mycup.datastore.dao.UserDAO;
import org.mycup.datastore.entity.Library;
import org.mycup.datastore.entity.Role;
import org.mycup.datastore.entity.User;
import org.mycup.enums.UserRole;
import org.mycup.services.LibraryService;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;
import org.springframework.web.servlet.support.RequestContextUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Created by mariiarichka on 24.04.14.
 */
@Controller
public class SignInController {


    public static final String PATH_TO_HOME_PAGE = "/protected/libMainCombined";
    public static final String CREATE_NEW_USER="/auth/CreateNewUser";
    public static final String REST_CREATE_NEW_USER="/auth/rest/CreateNewUser";
    /*public static final String REST_CREATE_NEW_USER="/auth/CreateNewUser";*/
    @Autowired
    private UserService service;
    @Autowired
    LibraryService libService;

    private static final Logger log = LoggerFactory.getLogger(SignInController.class);
/*For Rest API:*/
    @RequestMapping(value=REST_CREATE_NEW_USER, method=RequestMethod.POST)
    public @ResponseBody User create(
            @RequestParam String name,
            @RequestParam String password) {
        /*UserService service = new UserService();*/
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
/*
        newUser.setMail("test13@test");
        newUser.setPassword("test");
*/


        newUser.setRoles(newUser.getRoles());
        return service.createUser (newUser);
    }

    @RequestMapping(value=CREATE_NEW_USER, method=RequestMethod.POST/*, headers = "Content-Type: application/json"*/)
    public String createUser (@RequestParam String name,
                              @RequestParam String password
                             /* @RequestBody Library userLibrary*/) {
    /*    UserService service = new UserService();
        LibraryService libService = new LibraryService();*/
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
        User user = service.createUser (newUser);//
        if(user.getLibrary()==null){
           Library library = libService.createLibrary(user);
           user.setLibrary(library);
        }
/*        RedirectAttributes redirectAttributes = new RedirectAttributesModelMap();
        redirectAttributes.addFlashAttribute("userLibrary", user.getLibrary());*/
        return "redirect:/auth/home" ;
        }

    @RequestMapping(value = "/auth/home", method = RequestMethod.GET)
    public ModelAndView provideHomePage(Map<String, ?> model, HttpServletRequest request
                                        /*@RequestParam Library userLibrary*/) {
        Map<String,?> map = RequestContextUtils.getInputFlashMap(request);
        log.info("Welcome controller works correctly for home page");
        return new ModelAndView(PATH_TO_HOME_PAGE, model);
    }

/*    @RequestMapping(method = RequestMethod.POST)
    public String onSubmit(Foo foo, BindingResult errors,
                           HttpServletRequest request, HttpServletResponse response) throws
            Exception {
        boolean isNew = (foo.getId() == null);
        String success = getSuccessView();
        if (request.getParameter("delete") != null) {
            fooManager.remove(foo.getId());
        } else {
            fooManager.save(foo);
            if (!isNew) {
                success = "redirect:fooform?id=" + foo.getId();
            }
        }
        return success;
    }*/
}

