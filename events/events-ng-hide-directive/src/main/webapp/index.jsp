<!DOCTYPE html>
<html>
    <head>
        <title>The ng-hide Directive</title>
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
        <div ng-app="myApp" ng-controller="personCtrl">
            <!-- Asociamos el evento de click al boton mediante el uso de la 
            directiva ng-click. Adem�s, cada vez que hagamos click se ejecutar�
            la funci�n toggle definida en el controller asociado a este contexto.
            -->
            <button ng-click="toggle()">Hide user</button>
            <!-- Mediante la directiva ng-hide ocultamos o mostramos el contenido
            de la capa <p> en base al valor de la variable myVar.-->
            <p ng-hide="myVar">
                <!-- Hacemo sun bind del atributo innerHTML de los controles HTML
                con las variables de aplicaci�n firstName y lastName.-->
                First Name: <input type=text ng-model="firstName"><br>
                Last Name: <input type=text ng-model="lastName"><br><br>
                <!-- Evaluamos el resultado de concatenar las variables firstName
                y lastName.-->
                Full Name: {{firstName + " " + lastName}}
            </p>
        </div>
        <!-- Implementaci�n del controller. -->
        <script>
            var app = angular.module('myApp', []);
            app.controller('personCtrl', function ($scope) {
                // Inicializamos la variable firstName.
                $scope.firstName = "John";
                // Inicializamos la variable lastName.
                $scope.lastName = "Doe";
                // Inicializamos a false la variable myVar.
                $scope.myVar = false;
                // Definimos la funci�n toggle. Esta funci�n asigna en cada momento
                // el valor contrario al valor actual de myVar.
                $scope.toggle = function () {
                    $scope.myVar = !$scope.myVar;
                }
            });
        </script> 
    </body>
</html>