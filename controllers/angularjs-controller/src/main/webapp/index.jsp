<!DOCTYPE html>
<html>
    <head>
        <title>AngularJS Controller</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app.
        Además, definimos un controller mediante la directiva ng-controller de
        nombre myCtrl. Un controller de AngularJS es un objeto que nos ayuda a 
        gestionar la vista sobre la que los hemos definido.-->
        <div ng-app="myApp" ng-controller="myCtrl">
            <!-- Hacemos el bind de las variables firstName y lastName con los 
            controller HTML. -->
            First Name: <input type="text" ng-model="firstName"><br>
            Last Name: <input type="text" ng-model="lastName"><br>
            <br>
            <!-- Evaluamos la expresión que concatena el valor de las variables. -->
            Full Name: {{firstName + " " + lastName}}
        </div>
        <!-- Implementación del controller. -->
        <script>
            // Recuperamos en la variable app el controller por su nombre, "myApp". 
            var app = angular.module('myApp', []);
            // Inicializamos las variables firstName y lastName.
            app.controller('myCtrl', function ($scope) {
                // Asignamos valores a las variable.
                $scope.firstName = "John";
                $scope.lastName = "Doe";
            });
        </script>
    </body>
</html>