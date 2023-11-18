<?php

require_once(__DIR__ . './connection.php');

class UserModel extends Connection
{

    //acá vamos a manejar toda la logica del login, validar los campos, etc
    public function login($email, $password)
    {
        $query = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";

        return parent::findOne($query);
    }

    public function createUser($identification, $email, $password, $role)
    {
        $query = "INSERT INTO users (identification, email, password, role) VALUES ('$identification', '$email', '$password', '$role')";
        return parent::save($query);
    }

    public function updateUser($id, $identification, $email, $password)
    {
        $query = "UPDATE users SET identification = '$identification', email = '$email', password = '$password' WHERE id = $id";
        return parent::save($query);
    }

    public function deleteUser($id)
    {
        $query = "DELETE FROM users WHERE id = $id";
        return parent::save($query);
    }
}
