<!DOCTYPE html>
<html>
    <head>
        <title>AngularJS API isString()</title>
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app.
        Adem�s, definimos un controller mediante la directiva ng-controller.
        Los controladores en AngularJS son objetos que permiten desarrollar la 
        l�gica de la aplicaci�n, enlaza el �mbito, $scope, con la vista y permite 
        tener un control total de los datos. Explic�ndolo de otra manera, es el 
        encargado de gestionar los eventos.
        Los controladores se enlazan a la vista mediante la directiva ng-controller.
        Usamos la directiva "ng-controller" para asociar nuestro controlador a 
        nuestra vista, el controlador debemos a�adirlo por encima del contenido 
        html en el cual queremos que trabaje.
        -->
        <div ng-app="myApp" ng-controller="myCtrl">
            <!-- Evaluamos el valor de la variable x1 usando la doble llave. -->
            <p>{{ x1}}</p>
            <!-- Evaluamos el valor de la variable x2 usando la doble llave. -->
            <p>{{ x2}}</p>
        </div>
        <!-- Implementaci�n del controller. -->
        <script>
            var app = angular.module('myApp', []);
            app.controller('myCtrl', function ($scope) {
                // Definimos la variable de aplicaci�n x1 y la inicializamos.
                $scope.x1 = "JOHN";
                // Definimos la variable x2 y la inicializamos, pero en este caso
                // usamos como parametro de la funci�n del api de angular, el 
                // valor de la vairable x1 que hemos definido arriba.
                $scope.x2 = angular.isString($scope.x1);
            });
        </script>
    </body>
</html>