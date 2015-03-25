package org.mycup.datastore.entity;

import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;

/**
 * Created by user on 29.05.14.
 */
@NodeEntity
public class Tag {

    @GraphId
    @Indexed
    private Long id;

    @Indexed
    private String tagWord;

    public String getTagWord() {
        return tagWord;
    }

    public void setTagWord(String tagWord) {
        this.tagWord = tagWord;
    }

}
