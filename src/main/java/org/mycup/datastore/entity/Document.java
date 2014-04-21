package org.mycup.datastore.entity;



import org.neo4j.graphdb.Direction;
import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;
import org.springframework.data.neo4j.annotation.RelatedTo;

/**
 * Created by mariiarichka on 10.04.14.
 */
@NodeEntity
public class Document {

    @GraphId
    private Long id;

    @Indexed
    private String docName;

    private String content;

    @RelatedTo(type = "CONTAIN", direction = Direction.INCOMING)
    private Library library;

    @RelatedTo(type = "OWN_DOCS", direction = Direction.INCOMING)
    private User owner;

    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Library getLibrary() {
        return library;
    }

    public void setLibrary(Library library) {
        this.library = library;
    }
}
