<?php

/**
 * Created by PhpStorm.
 * User: PHP acedemy
 * Date: 17.05.2016
 * Time: 20:06
 */
class NotFoundException extends Exception
{
    public function __construct($message)
    {
        parent::__construct($message, 404);
    }
}