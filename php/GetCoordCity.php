<?php

/* 
   Взято из примера Яндекс.Карт. Пример №8
   https://codd-wd.ru/shpargalka-yandeks-karty-yandex-maps-api/#p2
 */

// Адрес, координаты которого необходимо получить
$address = $_GET['CityName'];
 
// Отправляем запрос к геокодеру
if ( ! $geocode = @file_get_contents( 'http://geocode-maps.yandex.ru/1.x/?geocode=' . urlencode( $address ) ) ) {
	$error = error_get_last();
	throw new Exception( 'HTTP request failed. Error: ' . $error['message'] );
}
 
$xml = new SimpleXMLElement( $geocode );
 
$xml->registerXPathNamespace( 'ymaps', 'http://maps.yandex.ru/ymaps/1.x' );
$xml->registerXPathNamespace( 'gml', 'http://www.opengis.net/gml' );
 
$result = $xml->xpath( '/ymaps:ymaps/ymaps:GeoObjectCollection/gml:featureMember/ymaps:GeoObject/gml:Point/gml:pos' );
 
if ( isset( $result[0] ) ) {
 
	list( $longitude, $latitude ) = explode(' ', $result[0]);

        $arr = Array(
            "longitude" => $longitude,
            "latitude" => $latitude
        );
        $JSON = json_encode($arr);
        echo $JSON;
        
        unset($arr);
        unset($JSON);
}