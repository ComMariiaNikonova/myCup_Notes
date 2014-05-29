package org.mycup.datastore.dao;

import org.mycup.datastore.entity.Library;
import org.mycup.datastore.entity.User;
import org.springframework.data.neo4j.repository.CRUDRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by mariiarichka on 11.04.14.
 */
@Repository
public interface LibraryDAO extends CRUDRepository<Library> {
    Library findByUser(User user);
}
