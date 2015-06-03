<!DOCTYPE html>
<html>
    <head>
        <title>Module In Body</title>
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
            <!-- Evaluamos la expresión que concatena las variables fisrtName y
            lastName.-->
            {{ firstName + " " + lastName}}
        </div>
        <!-- Implementación del controller. -->
        <script>
            // Podríamo ver un módulo como un paquete de Java. Es como una forma 
            // de agrupar funcionalidades de Angular. Por ejemplo, podríamos 
            // crear varias directivas relacionadas con google Maps. Lo normal 
            // sería agrupar todas esas directivas en un único módulo y luego 
            // al crear nuestra aplicación decir que vamos a usar dicho módulo.
            var app = angular.module("myApp", []);
            app.controller("myCtrl", function ($scope) {
                // Definimo e inicializamos las variables de aplicación firstName
                // y lastName.
                $scope.firstName = "John";
                $scope.lastName = "Doe";
            });
        </script> 
    </body>
</html>