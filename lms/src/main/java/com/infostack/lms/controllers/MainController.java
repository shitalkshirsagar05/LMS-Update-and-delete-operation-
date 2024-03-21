package com.infostack.lms.controllers;

import com.infostack.lms.models.Book;
import com.infostack.lms.services.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/")
public class MainController {
    @Autowired
    BookService bs;

    @RequestMapping("books/insert")
    public String insert() {
        return "insert-book";
    }

    @PostMapping("books/save")
    public String saveBook(@RequestParam("title") String title,
                           @RequestParam("author") String author,
                           @RequestParam("price") int price) {
        Book b = new Book(title, author, price);
        bs.saveBook(b);
        return "redirect:/books";
    }

    @RequestMapping("/books/edit/{id}")
    public String edit() {
        return "edit-book";
    }

    @RequestMapping("/books/delete/{id}")
    public String delete(@PathVariable("id") int id) {
        bs.deleteBook(id);

        return "redirect:/books";
    }

    @RequestMapping("books/{id}")
    public String view(@PathVariable("id") int id, ModelMap mp) {
        Book b = bs.getBook(id);
        mp.addAttribute("book", b);
        return "view-book";
    }

    @RequestMapping("books")
    public String list(ModelMap mp) {
        List<Book> bookList = bs.getAllBooks();
        mp.addAttribute("booklist", bookList);
        return "list-book";
    }
}
