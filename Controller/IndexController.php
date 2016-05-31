<?php

class IndexController extends Controller
{
    public function indexAction(Request $request)
    {


        $args = array(
            'number' => 4324,
            'name' => 'Mike'
        );

        return $this->render('index', $args);
    }

    public function contactAction(Request $request)
    {
        $form = new ContactForm($request);

        if ($request->isPost()) {
            if ($form->isValid()) {
                $feedbackModel = new FeedBackModel();
                $datetime = (new DateTime())->format('Y-m-d H:i:s');

                // mail()

                $feedbackModel->save(array(
                    'username' => $form->username,
                    'email' => $form->email,
                    'message' => $form->message,
                    'created' => $datetime
                ));
                Session::setFlash('Success');

                // todo: function redirect($to)
                Router::redirect('/index.php?route=index/contact');
            }

            Session::setFlash('Error');
        }

        $args = array(
            'form' => $form
        );
        return $this->render('contact', $args);
    }
}