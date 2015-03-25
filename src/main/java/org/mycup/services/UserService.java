package org.mycup.services;


import org.mycup.datastore.dao.UserDAO;
import org.mycup.datastore.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * Created by mariiarichka on 12.04.14.
 */
@Service
public class UserService {


    @Autowired
    private UserDAO userRepository;

    public User findByMail(String mail) {
        return userRepository.findByMail(mail);
    }

    public User createUser(User user) {
        User existingUser = userRepository.findByMail(user.getMail());

        if (existingUser != null) {
            throw new RuntimeException("Record already exists!");
        }

        return userRepository.save(user);
    }

    public Boolean delete(User user) {
        User existingUser = userRepository.findByMail(user.getMail());

        if (existingUser == null) {
            return false;
        }

        userRepository.delete(existingUser);
        return true;
    }
}