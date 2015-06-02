<!DOCTYPE html>
<html>
    <head>
        <title>Expression Filter Currency</title>
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
        <div ng-app="myApp" ng-controller="costCtrl">
            <!-- Con ng-model hacemos un binding de los valores de los input a 
            variables de aplicación -->
            Quantity: <input type="number" ng-model="quantity">
            Price: <input type="number" ng-model="price">
            <!-- Evaluamos la expressión que calcula el producto de la variable
            de aplicación quantity y price y al resultado le aplicamos el filtro
            currency.-->
            <p>Total = {{ (quantity * price) | currency}}</p>
        </div>
        <!-- Creamos el controller propiamente dicho. -->
        <script>
            var app = angular.module('myApp', []);
            app.controller('costCtrl', function ($scope) {
                // Definimos ls variables de aplicación quantity y price dentro
                // del contexto scope y les asignamos valor.
                $scope.quantity = 1;
                $scope.price = 9.99;
            });
        </script>
    </body>
</html>