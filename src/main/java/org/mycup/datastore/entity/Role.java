package org.mycup.datastore.entity;

import org.mycup.enums.UserRole;
import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;

/**
 * Created by mariiarichka on 10.04.14.
 */
@NodeEntity
public class Role {
    @GraphId
    @Indexed
    private Long id;

    @Indexed
    private UserRole role;

    public Long getId() {
        return id;
    }

    public  void setId(Long id) {
        this.id = id;
    }

    public UserRole getRole() {
        return role;
    }

    public void setRole(UserRole role) {
        this.role = role;
    }
}
