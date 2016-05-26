<?php

/**
 * Created by PhpStorm.
 * User: PHP acedemy
 * Date: 17.05.2016
 * Time: 19:40
 */
class BookModel
{
    public function find($id)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare('SELECT * FROM book WHERE status = 1 AND id = :number');
        $sth->execute(array(
            'number' => $id
        ));

        $books = $sth->fetch(PDO::FETCH_ASSOC);

        if (!$books) {
            throw new NotFoundException("Book #{$id} not found");
        }

        return $books;
    }


    public function findAll()
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->query('SELECT * FROM book WHERE status = 1 ORDER BY price DESC ');
        $books = $sth->fetchAll(PDO::FETCH_ASSOC);

        if (!$books) {
            throw new NotFoundException('Books not found');
        }

        return $books;
    }

    public function count()
    {
        // select count(*) from books
    }
}