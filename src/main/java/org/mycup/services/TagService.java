package org.mycup.services;

import org.mycup.datastore.dao.DocumentDAO;
import org.mycup.datastore.dao.TagDAO;
import org.mycup.datastore.entity.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by user on 29.05.14.
 */
@Service
public class TagService {

    @Autowired
    private TagDAO tagRepository;

    public Tag createTag(String incomeTag) {

        Tag tag = tagRepository.findByTagWord(incomeTag);
        if (tag != null) {
            return tag;
        } else {
            tag.setTagWord(incomeTag);
            return tagRepository.save(tag);
        }
    }

}
