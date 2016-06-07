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

    public function editAction(Request $request)
    {
        $id = $request->get('id');
        $form = new BookForm($request);
        $model = new BookModel();
        $styleModel = new StyleModel();
        $styles = $styleModel->findAll();
        $book = $model->find($id);

        if ($request->isPost()) {
            if ($form->isValid()) {
                $model->update(array(
                    'id' => $id,
                    'title' => $form->title,
                    'price' => $form->price,
                    'description' => $form->description,
                    'style_id' => $form->style,
                    'status' => 1
                ));

                Session::setFlash('Saved');
                Router::redirect('/admin/books');
            }

            Session::setFlash('Fill the fields');

        } else {
            $form->setFromArray($book);
        }


        $args = array(
            'form' => $form,
            'styles' => $styles,
            'book' => $book
        );

        return $this->render('edit', $args);
    }
}