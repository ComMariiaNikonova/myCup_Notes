package org.mycup.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.Map;

@Controller
public class LoginPageController {

    public static final String PATH_TO_LOGIN_PAGE = "/auth/loginPage";

    public static final String PATH_TO_HOME_PAGE = "/protected/userPage";

    private static final Logger log = LoggerFactory.getLogger(LoginPageController.class);

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Principal principal) {
        return principal != null ? PATH_TO_HOME_PAGE : PATH_TO_LOGIN_PAGE;
    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public ModelAndView provideWelcomePage(Map<String, ?> model) {
        log.info("Welcome controller works correctly for loginPage");

        return new ModelAndView(PATH_TO_LOGIN_PAGE, model);
    }

    @RequestMapping(value = "home", method = RequestMethod.GET)
    public ModelAndView provideHomePage(Map<String, ?> model) {
        log.info("Welcome controller works correctly for home page");
        return new ModelAndView(PATH_TO_HOME_PAGE, model);
    }

    @Secured("ROLE_USER")
    @RequestMapping(value = "user", method = RequestMethod.GET)
    public ModelAndView testUser(Map<String, ?> model) {
        log.info("USER role processing works correctly for home page");
        return new ModelAndView(PATH_TO_HOME_PAGE, model);
    }

    @Secured("ROLE_ADMIN")
    @RequestMapping(value = "admin", method = RequestMethod.GET)
    public ModelAndView testAdmin(Map<String, ?> model) {
        log.info("ADMIN role processing works correctly for home page");
        return new ModelAndView(PATH_TO_HOME_PAGE, model);
    }
}


