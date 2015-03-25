package org.mycup.datastore.dao;

import org.mycup.datastore.entity.Document;
import org.mycup.datastore.entity.Library;
import org.mycup.datastore.entity.User;
import org.springframework.data.neo4j.repository.CRUDRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

/**
 * Created by mariiarichka on 11.04.14.
 */
@Repository
public interface LibraryDAO extends CRUDRepository<Library> {
    Library findByUser(User user);
   // Set<Document> findByUser (); //can be founded only all set or one document?

}
