package org.mycup.services;

import org.mycup.datastore.dao.LibraryDAO;
import org.mycup.datastore.entity.Library;
import org.mycup.datastore.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by mariiarichka on 29.04.14.
 */
@Service
public class LibraryService {
    @Autowired
    private LibraryDAO libraryRepository;

    public Library createLibrary (User user) {
        Library library = libraryRepository.findByUser(user);
        if (library != null) {
            throw new RuntimeException("Record already exists!");
        }else{
        Library newLibrary = new Library();
        newLibrary.setUser(user);
        newLibrary.setLibName(user.getMail());

        return libraryRepository.save(newLibrary);
        }
  }
}
