<?php

    require "Connect.php";
    require_once "Class_GeoCalc.php";
    
    $Calc = new GeoCalc();
    $row = [];
    #координаты Города 1
    $result = $con->query("select longtitude, latitude from test_tgu.datacity where CityName = '".$_POST['CityName1']."'");        
    $row = $result->fetch_array();    
    $φA = $row[1];  //широта
    $λA = $row[0];  //долгота
        
    #координаты Города 2
    $result = $con->query("select longtitude, latitude from test_tgu.datacity where CityName = '".$_POST['CityName2']."'");        
    $row = $result->fetch_array();
    $λB = $row[0];  //долгота  
    $φB = $row[1];  //широта        

    #результат расчета
    echo Round($Calc->calculateTheDistanceKilometers($φA, $λA, $φB, $λB),2)." км";
    
    $result->free();