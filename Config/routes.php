<?php

use Library\Route;

return  array(

    // site routes
    'default' => new Route('/', 'Index', 'index'),
    'books_list' => new Route('/books', 'Book', 'index'),
    'book_page' => new Route('/book-{id}\.html', 'Book', 'show', array('id' => '[0-9]+') ),
    'contact_us' => new Route('/contact-us', 'Index', 'contact'),
    'login' => new Route('/login', 'Security', 'login'),
    'logout' => new Route('/logout', 'Security', 'logout'),
    // TODO: 'devionity_style' => new Route('/{_controller}/{_action}', ..., ..),

    // admin routes
    'admin_default' => new Route('/admin', 'Admin\Index', 'index'),
    'admin_books_list' => new Route('/admin/books', 'Admin\Book', 'index'),
    'admin_book_edit' => new Route('/admin/books/edit/{id}', 'Admin\Book', 'edit', array('id' => '[0-9]+')),






);