package org.mycup.datastore.entity;

import org.neo4j.graphdb.Direction;
import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;
import org.springframework.data.neo4j.annotation.RelatedTo;

import java.util.Set;

/**
 * Created by mariiarichka on 10.04.14.
 */
@NodeEntity
public class User {

    @GraphId
    @Indexed
    private Long id;

    @Indexed
    private String mail;

    private String password;

    private String welcomeString;

    @RelatedTo(type = "OWN_LIBS", direction = Direction.OUTGOING)
    private Library library;

    @RelatedTo(type = "OWN_DOCS", direction = Direction.OUTGOING)
    private Set<Document> ownedDocuments;

    @RelatedTo(type = "IN_ROLE", direction = Direction.OUTGOING)
    private Set<Role> roles;

    @RelatedTo(type = "SHARED_TO", direction = Direction.INCOMING)
    private Set<Document> sharedDocuments;


    public Set<Document> getOwnedDocuments() { return ownedDocuments; }

    public void setOwnedDocuments(Set<Document> ownedDocuments) {
        this.ownedDocuments = ownedDocuments; }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getWelcomeString() {
        return welcomeString;
    }

    public void setWelcomeString(String welcomeString) {
        this.welcomeString = welcomeString;
    }

    public Library getLibrary() {
        return library;
    }

    public void setLibrary(Library library) {
        this.library = library;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public Set<Document> getSharedDocuments() {
        return sharedDocuments;
    }

    public void setSharedDocuments(Set<Document> sharedDocuments) {
        this.sharedDocuments = sharedDocuments;
    }
}

