<?php

namespace App\Http\Controllers;

use DB;

class HomeController extends Controller
{
    //Dba_Connection_Method is testDBConnection()
    public function testDBConnection()
    {
        try {
            DB::connection()->getPdo();
            if (DB::connection()->getDatabaseName()) {
                return "Yes! Successfully connected to BD: " . DB::connection()->getDatabaseName();
            } else {
                die("Could not open connection to database server. Please check your configuration.");
            }
        } catch (\Exception $e) {
            die("Could not open connection to database server. Please check your configuration." . $e->getMessage());
        }
    }
}