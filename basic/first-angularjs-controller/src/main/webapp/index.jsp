<!DOCTYPE html>
<html>
    <head>
        <title>My first AngularJS Expression</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>
        <p>Try to change the names.</p>
        <!-- Definimos un formulario en nuestra web -->
        <!-- Inicializamos la aplicación AngularJS mediante el uso de la directiva
        ng-app y le asociamos un controller mediante la directiva ng-controller
        a la que le especificamos el nombre del mismo "myCtrl"
        Con ng-model hacemos un binding de los valores de los input a variables
        de aplicación.-->
        <div ng-app="myApp" ng-controller="myCtrl">
            First Name: <input type="text" ng-model="firstName"><br>
            Last Name: <input type="text" ng-model="lastName"><br>
            <br>
            <!-- Mostramos por pantalla los valores de las variables firstName y
            lastName.-->
            Full Name: {{firstName + " " + lastName}}
        </div>
   
        <script>            
            var app = angular.module('myApp', []);
            // Inicializamos los valores de los input firstName y lastName
            app.controller('myCtrl', function ($scope) {
                $scope.firstName = "John";
                $scope.lastName = "Doe";
            });
        </script>
    </body>
</html>