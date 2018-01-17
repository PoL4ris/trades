<?php

class TopHundredTrades
{

    private $trades;
    private $database;
    private $util;

    function __construct()
    {
        $this->database = Database::connect();
        $this->util     = new Utils();
        $this->trades   = array();
    }

    public function add()
    {

        $trade_time = isset($_POST['trade_time'])   ? $_POST['trade_time'] : 'now()';
        $symbol     = isset($_POST['symbol'])       ? $_POST['symbol']     : 'CBOE';
        $price      = isset($_POST['price'])        ? $_POST['price']      : mt_rand (0, 10) / 10;
        $quantity   = isset($_POST['quantity'])     ? $_POST['quantity']   : rand(1,200);


        $sql        = "INSERT INTO trade VALUES(null,$trade_time,'$symbol','$price','$quantity')";
        $query      = $this->database->query($sql);


        $this->trades = array();

        $this->getTop();

    }

    public function refreshTradesCache(){


        $trades     = $this->getTrades();
        $sql        = "TRUNCATE TABLE top_trades";
        $query      = $this->database->query($sql);
        $lengthArr  = count($trades);
        $sql        = "INSERT INTO top_trades VALUES";

        foreach($trades as $x => $trade){
            $sql .= "('{$trade['id']}','{$trade['trade_time']}','{$trade['symbol']}','{$trade['price']}','{$trade['quantity']}')" . (($lengthArr == $x + 1) ? '' : ',');
        }

        $query      = $this->database->query($sql);

        return true;

    }

    public function getTrades()
    {
        $sql    = "SELECT * FROM trade ORDER BY quantity DESC LIMIT 100";
        $query  = $this->database->query($sql);
        $trades = array();

        while ($row = $query->fetch_array(MYSQL_ASSOC)) {
            $trades[] = $row;
        }
        return $trades;
    }


    public function getTop()
    {

        if (empty($this->trades)) {

            $trades = $this->getTrades();
            echo(json_encode($trades));

        } else {

            echo(json_encode($this->trades));

        }

    }


    public function getLast100Trades()
    {
        $timestamp = isset($_REQUEST['timestamp']) ? $_REQUEST['timestamp'] : false;

        $result    = array();

        if (!$timestamp) {

            $sql    = "SELECT (SELECT MAX(tp.trade_time) FROM top_trades AS tp) AS update_timestamp, tp.* FROM top_trades AS tp ORDER BY id DESC LIMIT 100 ;";
            $query  = $this->database->query($sql);

            while ($row = $query->fetch_array(MYSQL_ASSOC)) {
                $result[] = $row;
            }

        } else {

            $time  = date('Y-m-d H:i:s',strtotime($timestamp));

            $sql   = "SELECT (SELECT MAX(tp.trade_time) FROM top_trades AS tp) AS update_timestamp, tp.* FROM top_trades AS tp WHERE trade_time > '{$time}' ORDER BY id DESC LIMIT 100 ;";
            $query = $this->database->query($sql);

            while ($row = $query->fetch_array(MYSQL_ASSOC)) {
                $result[] = $row;
            }
        }

        echo( json_encode(array('timestamp'  => isset($result[0]) ? $result[0]['update_timestamp'] : null,
                                'records'    => $result,
                                'newRecords' => isset($result[0]) ? true : false
                                )));

    }

}