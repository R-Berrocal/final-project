<?php

require_once(__DIR__ . '/connection.php');

class UserModel extends Connection
{
    private $email;
    private $password;
    private $identification;

    function getIdentification()
    {
        return mysqli_real_escape_string($this->connection, $this->identification);
    }

    function getEmail()
    {
        return mysqli_real_escape_string($this->connection, $this->email);
    }

    function getPassword()
    {
        return password_hash($this->connection->real_escape_string($this->password), PASSWORD_BCRYPT, ['cost' => 4]);
    }

    function setIdentification($identification)
    {
        $this->identification = $identification;
    }

    function setEmail($email)
    {
        $this->email = $email;
    }

    function setPassword($password)
    {
        $this->password = $password;
    }

    //acá vamos a manejar toda la logica del login, validar los campos, etc
    public function login()
    {
        $result = false;
        $password = $this->password;

        $query = "SELECT * FROM users WHERE email = '{$this->getEmail()}'";
        $login = parent::findOne($query);

        if (is_object($login) && $login->num_rows == 1) {
            $usuario = $login->fetch_object();
            $verify = password_verify($password, $usuario->password);

            if ($verify) {
                $result = $usuario;
            }
        }

        return $result;
    }

    public function createUser()
    {
        $query = "SELECT * FROM users WHERE (email = '{$this->getEmail()}' OR identification = {$this->getIdentification()}) AND role = 'admin'";
        $data = parent::findOne($query);   

        if (is_string($data)) {
            $query = "INSERT INTO users (identification, email, password, role) VALUES ('{$this->getIdentification()}', '{$this->getEmail()}', '{$this->getPassword()}', 'admin');";
            $save = parent::save($query);
            $result = false;
            if ($save) {
                $result = true;
            }
        }else{
            $result = false;
        }
        return $result;
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
