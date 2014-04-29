package org.mycup.services;

import org.mycup.datastore.entity.User;
import org.mycup.util.dataHolders.UserDataHolder;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by mariiarichka on 12.04.14.
 */
public class MyCupUserDetailsService implements UserDetailsService {

    @Resource
    private UserService userService;
    private UserDataHolder userDataHolder;

    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername (String mail) throws UsernameNotFoundException {

        User user = userService.findByMail(mail);
        if (user==null){
            userDataHolder = new UserDataHolder();
            userDataHolder.setMail(mail);
        }
        final String username = user.getMail();
        final String password = user.getPassword();
        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority("USER"));
        return new org.springframework.security.core.userdetails.User(username, password, authorities);
    }
}
