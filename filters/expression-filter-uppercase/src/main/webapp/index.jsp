<!DOCTYPE html>
<html>
    <head>
        <title>Controller In JavaScript File I</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app.
        Además, definimos un controller mediante la directiva ng-controller de
        nombre myCtrl. 
        Los controladores en AngularJS son objetos que permiten desarrollar la 
        lógica de la aplicación, enlaza el ámbito, $scope, con la vista y permite 
        tener un control total de los datos. Explicándolo de otra manera, es el 
        encargado de gestionar los eventos.
        Los controladores se enlazan a la vista mediante la directiva ng-controller.
        Usamos la directiva "ng-controller" para asociar nuestro controlador a 
        nuestra vista, el controlador debemos añadirlo por encima del contenido 
        html en el cual queremos que trabaje.
        -->
        <div ng-app="myApp" ng-controller="personCtrl">
            <!-- A continuación evaluamos la expresión que muestra por pantalla 
            el apellido de nuestra persona, solo que en este caso le aplicamos
            un filtro a dicha cadena.
            Para aplicar el filtro, lo único que tenemos que hacer es añadir el
            caracter de pipe (|) y el filtro.
            En este caso, el filtro convierte la cadena que lo precede a 
            mayúsculas-->
            <p>The name is {{ lastName | uppercase }}</p>
        </div>
        <!-- Importamos el fichero que contiene el código del controller. -->
        <script src="js/personController.js"></script>
    </body>
</html>