package org.mycup.services;

import org.apache.log4j.Logger;
import org.mycup.datastore.dao.UserDAO;
import org.mycup.datastore.entity.User;
import org.mycup.util.DataHolders.UserDataHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AuthenticationFailureBadCredentialsEvent;
import org.springframework.stereotype.Component;
/**
 * Created by mariiarichka on 21.04.14.
 */

@Component
public class MyCupApplicationListenerFailure
implements ApplicationListener<AuthenticationFailureBadCredentialsEvent> {

        UserDataHolder userDataHolder;
        private static final Logger log = Logger.getLogger(MyCupApplicationListenerFailure.class);

        public void onApplicationEvent(AuthenticationFailureBadCredentialsEvent event) {
            userDataHolder = new UserDataHolder();
            String mail = userDataHolder.getMailUser();
        }
    }