<?php
#получим список городов в формате Json

require "Connect.php";
          
    $result = $con->query("select rownum, cityname, longtitude, latitude from test_tgu.datacity");
    $rows = array();
    
    while ($row = $result->fetch_array()) {
        $Arr = (array('rownum'=>$row[0], 'cityname'=>$row[1], 'longtitude'=>$row[2], 'latitude'=>$row[3], ));
        $rows[] = $Arr;
    }
    echo json_encode($rows);
    
    $result->free();

