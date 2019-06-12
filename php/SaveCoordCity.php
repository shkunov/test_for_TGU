<?php
    #Запись в БД MySQL
    require "Connect.php";
    
    $CityName = $_POST['CityName'];     #Город
    $longitude = $_POST['longitude'];   #долгота
    $latitude = $_POST['latitude'];     #широта
    
    if (isset($CityName) && isset($longitude) && isset($latitude))
    {
        $result = $con->query("INSERT INTO datacity (CityName, longtitude, latitude, date, time) VALUES ('$CityName','$longitude','$latitude',NOW(),NOW())");
        if ($result == true){
            echo "Информация занесена в базу данных";
        }
        else{
            echo "Ошибка: ".mysqli_error($con);
        }
        
    }
    else
        echo 'Ошибка! Не полные данные';
    
    


