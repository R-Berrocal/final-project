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
        $this->dbname = 'test';
        $this->connection = mysqli_connect($this->host, $this->user, $this->password, $this->dbname);

        if ($this->connection->connect_errno) {
            echo "Fallo al conectar a MySQL: (" . $this->connection->connect_errno . ") " . $this->connection->connect_error;
        }
    }

    public function findAll($query)
    {
        $result = mysqli_query($this->connection, $query);
        $data = [];

        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }
        return $data;
    }

    public function findOne($query)
    {
        $result = mysqli_query($this->connection, $query);

        return mysqli_fetch_assoc($result);
    }

    public function save($query)
    {
        mysqli_query($this->connection, $query);

        return mysqli_affected_rows($this->connection);
    }
}
