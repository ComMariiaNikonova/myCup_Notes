package org.mycup.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by user on 09.06.14.
 */
@Controller
public class LibraryController {

    public static final String RENAME_LIB_ACTION = "/protected/libMainCombined/rename";

    @RequestMapping(value=RENAME_LIB_ACTION, method= RequestMethod.POST)
    public void createDoc (@RequestParam String newLibName
    ) {

    }


}
