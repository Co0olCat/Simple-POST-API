<?php

/*
 * Api will listen on \app
 * Only POST is allowed.
 * Testing:  curl -X POST http://localhost/flower/app
 * On success new record with current timestamp will be inserted into public.api_calls.
 */

if (!isset($_SERVER["REQUEST_METHOD"])) {

    exit("Cannot determine request method\n");
}

//<editor-fold desc="Allow only POST requests">
if ($_SERVER["REQUEST_METHOD"] !== 'POST') {
	
    http_response_code(400);
	
    exit("Only POST method is allowed\n");
}
//</editor-fold>

//<editor-fold desc="Connect to DB">
$db = pg_connect( "host=127.0.0.1 port=5432 dbname=flower user=flower password=flower");

if(!$db) {
    exit("Error : Unable to open database\n");
}
//</editor-fold>

//<editor-fold desc="Add record">
$ret = pg_query($db, "
    INSERT INTO public.api_calls 
        DEFAULT VALUES;
");

if(!$ret) {
    echo pg_last_error($db) . "\n";
} else {
    echo "Timestamp was inserted\n";
}
//</editor-fold>