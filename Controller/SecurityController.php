<?php

//  .*  --> 'a5f35v3', '5c ', '', '?dfs43sxzc', '$'
//  [abc]+ --> 'acccbbb', 'abba', 'ababa'
//  [a-zA-Z]? --> '', 'A', ..., 'Z', 'a', 'b', 'c', ... ,'z'
//  [0-9a-zA-Z]{10,20}
//  (093) 521-54-12   :     ^\(0[1-9]{2}\)\s([0-9]{3})-[0-9]{2}-[0-9]{2}$



class SecurityController extends Controller
{
    public function loginAction(Request $request)
    {
        $form = new LoginForm($request);

        if ($request->isPost()) {
            if ($form->isValid()) {
                $model = new UserModel();
                $password = new Password($form->password);

                if ($user = $model->find($form->email, $password)) {
                    Session::set('user', $user['email']);
                    Router::redirect('/admin');
                }

                Session::setFlash('User not found');
                Router::redirect('/login');
            }

            Session::setFlash('Fill the fields');
        }

        return $this->render('login', array('form' => $form));
    }

    public function logoutAction(Request $request)
    {
        Session::remove('user');
        Router::redirect('/');
    }


}