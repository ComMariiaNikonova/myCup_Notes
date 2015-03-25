package org.mycup.datastore.dao;

import org.mycup.datastore.entity.Document;
import org.mycup.datastore.entity.Library;
import org.springframework.data.neo4j.repository.CRUDRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

/**
 * Created by mariiarichka on 11.04.14.
 */
@Repository
public interface DocumentDAO extends CRUDRepository<Document> {
    Document findByLibrary(Library library);

}