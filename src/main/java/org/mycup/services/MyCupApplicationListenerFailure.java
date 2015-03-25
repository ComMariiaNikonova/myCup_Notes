package org.mycup.services;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AuthenticationFailureBadCredentialsEvent;
import org.springframework.stereotype.Component;
/**
 * Created by mariiarichka on 21.04.14.
 */

@Component
public class MyCupApplicationListenerFailure
implements ApplicationListener<AuthenticationFailureBadCredentialsEvent> {

        private static final Logger log = Logger.getLogger(MyCupApplicationListenerFailure.class);

        public void onApplicationEvent(AuthenticationFailureBadCredentialsEvent event) {
        }
    }