package org.mycup.util.dataHolders;

import org.mycup.datastore.entity.Role;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * Created by mariiarichka on 21.04.14.
 */
@Component
@Scope("session")
public class UserDataHolder {

    String mail;
    Role role;
    String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
}

