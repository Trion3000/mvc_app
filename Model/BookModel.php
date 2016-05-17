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
        $books = array(
            array(
                'id' => 1,
                'title' => 'Dracula',
                'author' => 'Stoker',
                'price' => 666
            ),

            array(
                'id' => 2,
                'title' => 'Dream catcher',
                'author' => 'King',
                'price' => 243
            ),

            array(
                'id' => 3,
                'title' => 'Flowers for Eldzhernon',
                'author' => 'Somepne',
                'price' => 3423
            ),
        );

        foreach ($books as $book) {
            if ($book['id'] == $id) {
                return $book;
            }
        }

        throw new NotFoundException('Book not found');
    }


    public function findAll()
    {
        return array(
            array(
                'id' => 1,
                'title' => 'Dracula',
                'author' => 'Stoker',
                'price' => 666
            ),

            array(
                'id' => 2,
                'title' => 'Dream catcher',
                'author' => 'King',
                'price' => 243
            ),

            array(
                'id' => 3,
                'title' => 'Flowers for Eldzhernon',
                'author' => 'Somepne',
                'price' => 3423
            ),
        );
    }
}