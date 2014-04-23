package org.mycup.util.dataHolders;

import org.mycup.datastore.entity.Role;

/**
 * Created by mariiarichka on 21.04.14.
 */
public class UserDataHolder {

    String mailUser;
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

    public String getMailUser() {
        return mailUser;
    }

    public void setMailUser(String mailUser) {
        this.mailUser = mailUser;
    }
}

