package org.mycup.services;

import org.mycup.datastore.dao.DocumentDAO;
import org.mycup.datastore.entity.Document;
import org.mycup.datastore.entity.Library;
import org.mycup.datastore.entity.Tag;
import org.mycup.datastore.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

/**
 * Created by user on 29.05.14.
 */
@Service
public class DocumentService {

    @Autowired
    private DocumentDAO documentRepository;

    public Document createDocument (Library library, String documentName, String content, User userName, Set <Tag> tags) {

        Document document = documentRepository.findByLibrary(library);
        if (document!= null) {
            throw new RuntimeException("Record already exists!");
        }else{
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date dateToFormat = new Date();
            String date = dateFormat.format(dateToFormat);

            Document newDocument = new Document();
            newDocument.setContent(content);
            newDocument.setCreationDate(date);
            newDocument.setDocName(documentName);
            newDocument.setOwner(userName);
            newDocument.setLibrary(library);
            newDocument.setTags(tags);

            return documentRepository.save(newDocument);
        }
    }

}
