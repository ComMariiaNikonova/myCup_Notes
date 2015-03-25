package org.mycup.controllers;

import org.mycup.datastore.entity.*;
import org.mycup.enums.UserRole;
import org.mycup.services.DocumentService;
import org.mycup.services.LibraryService;
import org.mycup.services.TagService;
import org.mycup.services.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/**
 * Created by mariiarichka on 24.04.14.
 */
@Controller
public class SignInController {

    public static final String PATH_TO_HOME_PAGE = "/protected/userPage";

    public static final String CREATE_NEW_USER = "/auth/CreateNewUser";
    public static final String REST_CREATE_NEW_USER = "/auth/rest/CreateNewUser";

    @Autowired
    private UserService service;
    @Autowired
    LibraryService libService;
    @Autowired
    DocumentService docService;
    @Autowired
    TagService tagService;
    @Autowired
    private ApplicationContext context;


    private static final Logger log = LoggerFactory.getLogger(SignInController.class);

    /*For Rest API:*/
    @RequestMapping(value = REST_CREATE_NEW_USER, method = RequestMethod.POST)
    public
    @ResponseBody
    User create(
            @RequestParam String name,
            @RequestParam String password) {
        Set<Role> roles = new HashSet<Role>();
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
        return service.createUser(newUser);
    }

    @RequestMapping(value = CREATE_NEW_USER, method = RequestMethod.POST)
    public String createUser(@RequestParam String name,
                             @RequestParam String password
    ) {
        Set<Role> roles = new HashSet<Role>();
        User newUser = new User();
        Role newRole = new Role();

        newRole.setRole(UserRole.USER);
        newUser.setRoles(roles);

        newUser.getRoles().add(newRole);
        newUser.setMail(name);
        newUser.setPassword(password);

        newUser.setRoles(newUser.getRoles());
        User user = service.createUser(newUser);
        /*can be get out to service*/
        if (user.getLibrary() == null) {
            Library library = libService.createLibrary(user);
            user.setLibrary(library);
            String firstDocContent = context.getMessage("first.content", null, Locale.getDefault());
            String firstDocTag = context.getMessage("first.tag", null, Locale.getDefault());
            Tag tag = tagService.createTag(firstDocTag);
            Set<Tag> tags = new HashSet<Tag>();
            tags.add(tag);
            docService.createDocument(library, library.getLibName(), firstDocContent, user, tags);
        }
        return "redirect:/auth/home";
    }

    @RequestMapping(value = "/auth/home", method = RequestMethod.GET)
    public ModelAndView provideHomePage(Map<String, ?> model) {
        log.info("Welcome controller works correctly for home page");
        return new ModelAndView(PATH_TO_HOME_PAGE, model);
    }
}

