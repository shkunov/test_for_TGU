//JQuery Ajax
$(function()
{   
   //Предварительно перезапишем список городов 
   PreLoad();    
   
    //обработка события на кнопку класса btn-secondary
    //Поиск геоданных о городе
    $('.btn-secondary').on('click', function() {
        $.ajax({// Начала конструкции для работы с Ajax через jQuery
        type: "GET", // Метод отправки данных GET
        url: "php/GetCoordCity.php?CityName="+$("#CityName").val(),
        dataType: "json", //ожидаемый формат данных
        success: function(jsondata){
        $('#longitude').val(jsondata.longitude); //широта
        $('#latitude').val(jsondata.latitude);  //длогота
        },
        error: function(jqxhr, status, errorMsg) {
                alert("Ошибка: "+errorMsg);
                }  
        });  
    });
        
    //кнопка сохранения результатов
    $('.btn-primary').on('click', function() {
        $.ajax({	// Начала конструкции для работы с Ajax через jQuery
        type: "POST", // Метод, которым получаем данные из формы
        url: "php/SaveCoordCity.php", // Обработчик формы. 
        data: $("#form").serialize(), // Формируем список данных из полей формы
        success: function(html) {	// функция выполняемая при успешном отправлении данных
                alert(html);
                //очищаем
                $("#CityName").val("");
                $("#longitude").val("");
                $("#latitude").val("");
                //подзагрузка новых данных
                PreLoad();
                },
        error: function(jqxhr, status, errorMsg) {
                alert("Ошибка: "+errorMsg);
                }  
        });
    });
    
    //расчет расстояния
    $('.btn-info').on('click', function() {
        $.ajax({	// Начала конструкции для работы с Ajax через jQuery
        type: "POST", // Метод, которым получаем данные из формы
        url: "php/GetResultCalc.php", //переделать
        data: {CityName1:$("#sel1 option:selected").val(),CityName2:$("#sel2 option:selected").val()}, // Формируем список данных из полей формы
        success: function(text) {	// функция выполняемая при успешном отправлении данных                
            $('#result').html(text);
                },
        error: function(jqxhr, status, errorMsg) {
                alert("Ошибка: "+errorMsg);
                        }  
        });               
    });
});

function PreLoad()
{
        $.ajax({	
            type: "POST", // Метод, которым получаем данные из формы
            url: "php/GetCity.php", // Обработчик формы.
            dataType: "json",
            success: function(jsondata) {	// функция выполняемая при успешном отправлении данных                
                //очищаем select'ы
                $("#sel1").empty();
                $("#sel2").empty();
                //
                $("#sel1").append("<option></option>");
                $("#sel2").append("<option></option>");
                // перебор js объекта
                for (var key in jsondata) {
                    if (!jsondata.hasOwnProperty(key)) continue;
                    var val = jsondata[key];
                    $("#sel1").append( $("<option value='"+ val.cityname  +"'>"+ val.cityname +" (Д:" + val.longtitude+"; Ш:"+ val.latitude+ ")" +"</option>"));
                    $("#sel2").append( $("<option value='"+ val.cityname  +"'>"+ val.cityname +" (Д:" + val.longtitude+"; Ш:"+ val.latitude+ ")" +"</option>"));
                }
                    },
            error: function(jqxhr, status, errorMsg) {
                    alert("Ошибка: "+errorMsg);
                            }  
        });
}

