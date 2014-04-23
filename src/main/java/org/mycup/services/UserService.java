package org.mycup.services;

import org.mycup.datastore.dao.UserDAO;
import org.mycup.datastore.entity.Role;
import org.mycup.datastore.entity.User;
import org.mycup.util.dataHolders.UserDataHolder;
import org.springframework.stereotype.Service;
import org.w3c.dom.UserDataHandler;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.Set;


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

    public User createUser (UserDataHolder userData) {
    User user = new User();
    Set<Role> userRoles = new HashSet <Role> ();
    userRoles.add(userData.getRole());
    user.setMail(userData.getMailUser());
    user.setPassword(userData.getPassword());
    user.setRoles(userRoles);
    return userDAO.save(user);
    }
}