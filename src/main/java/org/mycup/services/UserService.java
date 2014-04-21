package org.mycup.services;

import org.mycup.datastore.dao.UserDAO;
import org.mycup.datastore.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


/**
 * Created by mariiarichka on 12.04.14.
 */
@Service
public class UserService {

    @Resource
    private UserDAO userDAO;

    public User findByMail (String mail) {
        return userDAO.findByMail(mail);
    }
}