<?php

/**
 * Created by PhpStorm.
 * User: henry
 * Date: 01.06.16
 * Time: 10:57
 */
class AdminBookController extends Controller
{
    public function indexAction(Request $request)
    {
        if (!Session::has('user')) {
            Router::redirect('/login');
        }


        $bookModel = new BookModel();
        $books = $bookModel->findAll();

        $args = array(
            'books' => $books
        );

        return $this->render('index', $args);
    }
}