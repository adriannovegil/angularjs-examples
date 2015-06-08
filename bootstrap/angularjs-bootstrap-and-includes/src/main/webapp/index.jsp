<!DOCTYPE html>
<html>
    <head>
        <title>AngularJS Bootstrap And Includes</title>
        <!-- Importamos la hoja de estilos de bootstrap -->
        <link rel="stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <!-- Indicamos el "owner" de AngularJS con la directiva np-app.
    Además, definimos un controller mediante la directiva ng-controller.
    Los controladores en AngularJS son objetos que permiten desarrollar la 
    lógica de la aplicación, enlaza el ámbito, $scope, con la vista y permite 
    tener un control total de los datos. Explicándolo de otra manera, es el 
    encargado de gestionar los eventos.
    Los controladores se enlazan a la vista mediante la directiva ng-controller.
    Usamos la directiva "ng-controller" para asociar nuestro controlador a 
    nuestra vista, el controlador debemos añadirlo por encima del contenido 
    html en el cual queremos que trabaje.
    -->
    <body ng-app="myApp" ng-controller="userCtrl">
        <div class="container">
            <!-- Usamos la directiva ng-include que permite incorporar las 
            subvistas a partir de ficheros externos. -->
            <div ng-include="'myUsers_List.html'"></div>
            <div ng-include="'myUsers_Form.html'"></div>
        </div>
        <!-- Importamos el controller y la aplicación. -->
        <script src= "js/myUsers.js"></script>
    </body>
</html>