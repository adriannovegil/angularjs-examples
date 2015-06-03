<!DOCTYPE html>
<html>
    <head>
        <title>Module In Body</title>
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
            <!-- Evaluamos la expresi�n que concatena las variables fisrtName y
            lastName.-->
            {{ firstName + " " + lastName}}
        </div>
        <!-- Implementaci�n del controller. -->
        <script>
            // Podr�amo ver un m�dulo como un paquete de Java. Es como una forma 
            // de agrupar funcionalidades de Angular. Por ejemplo, podr�amos 
            // crear varias directivas relacionadas con google Maps. Lo normal 
            // ser�a agrupar todas esas directivas en un �nico m�dulo y luego 
            // al crear nuestra aplicaci�n decir que vamos a usar dicho m�dulo.
            var app = angular.module("myApp", []);
            app.controller("myCtrl", function ($scope) {
                // Definimo e inicializamos las variables de aplicaci�n firstName
                // y lastName.
                $scope.firstName = "John";
                $scope.lastName = "Doe";
            });
        </script> 
    </body>
</html>