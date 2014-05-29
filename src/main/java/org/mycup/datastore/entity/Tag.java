package org.mycup.datastore.entity;

import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;

/**
 * Created by user on 29.05.14.
 */
public class Tag {

    @GraphId
    @Indexed
    private Long id;

    @Indexed
    private String tagWord;

}
