package org.mycup.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
public class UserSourceController {

    public static final String PATH_TO_MAIN_LIB_COMBINED_PAGE = "/protected/libMainCombined";
    public static final String PATH_TO_TEST_USER_PAGE = "/protected/userPage";
    public static final String PATH_TO_TEST_ADMIN_PAGE = "/protected/adminPage";
    public static final String PATH_TO_TEST_PAGE = "/protected/testPage";

    private static final Logger log = LoggerFactory.getLogger(UserSourceController.class.getName());

/*    @RequestMapping(value = "libMainCombined", method = RequestMethod.GET)
    public ModelAndView provideLibMainCombined(Map<String, ?> model) {
        log.info("Welcome controller works correctly for libMain");
        return new ModelAndView(PATH_TO_MAIN_LIB_COMBINED_PAGE, model);

    }*/
    @RequestMapping(value = "libMainCombined", method = RequestMethod.GET)
    public ModelAndView provideLibMainCombined(Map<String, ?> model) {
        log.info("Welcome controller works correctly for libMain");
        return new ModelAndView(PATH_TO_TEST_USER_PAGE, model);

    }

    @RequestMapping(value = "testPage", method = RequestMethod.GET)
    public ModelAndView provideTestPage (Map<String, ?> model) {
        log.info("Welcome controller works correctly for libMain");
        return new ModelAndView(PATH_TO_TEST_PAGE, model);
    }

    @RequestMapping(value = "testUserPage", method = RequestMethod.GET)
    public ModelAndView provideTestUserPage (Map<String, ?> model) {
        log.info("Welcome controller works correctly for libMain");
        return new ModelAndView(PATH_TO_TEST_USER_PAGE, model);
    }

    @RequestMapping(value = "testAdminPage", method = RequestMethod.GET)
    public ModelAndView provideTestAdminPage (Map<String, ?> model) {
        log.info("Welcome controller works correctly for libMain");
        return new ModelAndView(PATH_TO_TEST_ADMIN_PAGE, model);
    }
}

