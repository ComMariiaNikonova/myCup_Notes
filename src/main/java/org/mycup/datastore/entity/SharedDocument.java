package org.mycup.datastore.entity;

import org.mycup.enums.DocumentAccessMode;
import org.springframework.data.neo4j.annotation.EndNode;
import org.springframework.data.neo4j.annotation.RelationshipEntity;
import org.springframework.data.neo4j.annotation.StartNode;

/**
 * Created by mariiarichka on 10.04.14.
 */
@RelationshipEntity(type = "SHARED_TO")
public class SharedDocument {

    @StartNode
    private Document sharedDocument;

    @EndNode
    private User user;

    private DocumentAccessMode mode;

    public DocumentAccessMode getMode() {
        return mode;
    }

    public void setMode(DocumentAccessMode mode) {
        this.mode = mode;
    }

    public Document getSharedDocument() {
        return sharedDocument;
    }

    public void setSharedDocument(Document sharedDocument) {
        this.sharedDocument = sharedDocument;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
