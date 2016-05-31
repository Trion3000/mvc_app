<?php

// email: blabla
// password: blb' or 1 --

// select * from user where email='blabla' and password='blb' or 1 -- ';


class UserModel
{
    public function find($email, $password)
    {
        $db = DbConnection::getInstance()->getPdo();
        $sth = $db->prepare('select * from user where email = :email and password = :password and status = 1');
        $sth->execute(array(
            'email' => $email,
            'password' => $password,
        ));

        $user = $sth->fetch(PDO::FETCH_ASSOC);

        return $user;
    }
}