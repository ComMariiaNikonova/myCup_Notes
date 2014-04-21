package org.mycup.services;

import org.mycup.util.DataHolders.UserDataHolder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by mariiarichka on 19.04.14.
 */

public class MyCupAuthenticationFailureHandler  implements AuthenticationFailureHandler {
    private static final Logger log = LoggerFactory.getLogger(MyCupAuthenticationFailureHandler.class);

    UserDataHolder userDataHolder;

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException  exception) throws IOException, ServletException {
     userDataHolder = new UserDataHolder();
     String mail = userDataHolder.getMailUser();
        log.debug("mail: ", mail);
    }
}