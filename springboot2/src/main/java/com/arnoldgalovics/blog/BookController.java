package com.arnoldgalovics.blog;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
public class BookController implements InitializingBean {
    private Map<Integer, Book> bookMap = new HashMap<>();

    @Override
    public void afterPropertiesSet() throws Exception {
        bookMap.put(1, new Book(1, "Effective Java"));
        bookMap.put(2, new Book(2, "Running Spring in Serverless"));
    }

    @RequestMapping("/books")
    public Collection<Book> getBooks() {
        return bookMap.values();
    }
}
