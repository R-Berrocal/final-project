<?php
class Connection
{
    private $host;
    private $user;
    private $password;
    private $dbname;
    private $connection;

    function __construct()
    {
        $this->host = 'localhost';
        $this->user = 'root';
        $this->password = '';
        $this->dbname = 'questionary-db';
        $this->connection = mysqli_connect($this->host, $this->user, $this->password, $this->dbname);

        if ($this->connection->connect_errno) {
            echo "Fallo al conectar a MySQL: (" . $this->connection->connect_errno . ") " . $this->connection->connect_error;
        }
    }

    public function findAll($query)
    {
        $result = mysqli_query($this->connection, $query);
        $data = [];

        if (!$result) {
            return "Error: " . mysqli_error($this->connection);
        } elseif (mysqli_num_rows($result) == 0) {
            return "No se encontraron items";
        }

        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }
        return $data;
    }

    public function findOne($query)
    {
        $result = mysqli_query($this->connection, $query);
        if (!$result) {
            return "Error: " . mysqli_error($this->connection);
        } elseif (mysqli_num_rows($result) == 0) {
            return "No se encontraron items";
        }
        return mysqli_fetch_assoc($result);
    }

    public function save($query)
    {
        $result = mysqli_query($this->connection, $query);

        if (!$result) {
            return "Error: " . mysqli_error($this->connection);
        } elseif (mysqli_affected_rows($this->connection) == 0) {
            return "No se hizo ninguna operación";
        }


        return mysqli_affected_rows($this->connection);
    }
}
