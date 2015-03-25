package org.mycup.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * Created by user on 29.05.14.
 */
@Controller
public class DocumentController {

    public static final String SAVE_DOC_ACTION = "/protected/libMainCombined/save";
    public static final String DELETE_DOC_ACTION = "/protected/libMainCombined/delete";
    public static final String CREATE_DOC_ACTION = "/protected/libMainCombined/create";
    public static final String GET_DOC_ACTION = "/protected/libMainCombined/get";

    private static final Logger log = LoggerFactory.getLogger(UserSourceController.class.getName());

    @RequestMapping(value = GET_DOC_ACTION, method = RequestMethod.GET)
    public ModelAndView getDoc (Map<String, ?> model) {
        log.info("Welcome controller works correctly for libMain");
        return new ModelAndView(GET_DOC_ACTION, model);
    }

    @RequestMapping(value=CREATE_DOC_ACTION, method=RequestMethod.POST/*, headers = "Content-Type: application/json"*/)
    public void createDoc (@RequestParam String libId,
                           @RequestParam String docName
    ) {}

    @RequestMapping(value=SAVE_DOC_ACTION, method=RequestMethod.POST/*, headers = "Content-Type: application/json"*/)
    public void saveDoc (@RequestParam String libId,
                         @RequestParam String docId,
                         @RequestParam String content
    ) {}

    @RequestMapping(value=DELETE_DOC_ACTION, method=RequestMethod.POST/*, headers = "Content-Type: application/json"*/)
    public void saveDoc (@RequestParam String libId,
                         @RequestParam String docId
    ) {}
        //createDocument
}
