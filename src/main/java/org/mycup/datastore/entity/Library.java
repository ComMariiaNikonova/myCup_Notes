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
public class Library {

    @GraphId
    @Indexed
    private Long id;

    @Indexed
    private String libName;

    public String getCreationDate() {
        return creationDate;
    } //Date format

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }

    private String creationDate;


    @RelatedTo(type = "OWN_LIBS", direction = Direction.INCOMING)
    private User user;

    @RelatedTo(type = "CONTAIN", direction = Direction.OUTGOING)
    private Set<Document> documents;

    public Set<Document> getDocuments() {
        return documents;
    }

    public void setDocuments(Set<Document> documents) {
        this.documents = documents;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLibName() {
        return libName;
    }

    public void setLibName(String libName) {
        this.libName = libName;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
