<!DOCTYPE html>
<html>
    <head>
        <title>The ng-click Directive</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
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
        <div ng-app="myApp" ng-controller="myCtrl">
            <!-- Asociamos el evento de click al boton mediante el uso de la 
            directiva ng-click. Además, en cada click incrementamos en una unidad
            el valor de la variable count.-->
            <button ng-click="count = count + 1">Click Me!</button>
            <!-- Evaluamos y mostramos por pantalla el valor de la variable 
            count. -->
            <p>{{ count}}</p>

        </div>
        <!-- Implementación del controller. -->
        <script>
            var app = angular.module('myApp', []);
            // Controller myCtrl. Definimos la variable de aplicación count e 
            // inicializamos su valor a cero.
            app.controller('myCtrl', function ($scope) {
                // Inicializamos el valor de la variable a cero.
                $scope.count = 0;
            });
        </script> 
    </body>
</html>