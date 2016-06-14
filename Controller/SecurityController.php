<?php

namespace Controller;

use Library\Controller;
use Library\Password;
use Library\Request;
use Library\Router;
use Library\Session;
use Model\LoginForm;
use Model\UserModel;

class SecurityController extends Controller
{
    /**
     * @param Request $request
     * @return string
     * @throws \Library\Exception
     */
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