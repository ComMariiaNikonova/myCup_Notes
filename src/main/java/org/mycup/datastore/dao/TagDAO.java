package org.mycup.datastore.dao;

import org.mycup.datastore.entity.Tag;
import org.springframework.data.neo4j.repository.CRUDRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by user on 29.05.14.
 */
@Repository
public interface TagDAO extends CRUDRepository<Tag> {
    Tag  findByTagWord(String word);

}
