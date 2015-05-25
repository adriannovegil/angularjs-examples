<!DOCTYPE html>
<html>
    <head>
        <title>Controller Properties</title>
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app.
        Adem�s, definimos un controller mediante la directiva ng-controller de
        nombre myCtrl. 
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
            <!-- Hacemos el bind de las variables firstName y lastName con los 
            controller HTML. -->
            First Name: <input type="text" ng-model="firstName"><br>
            Last Name: <input type="text" ng-model="lastName"><br>
            <br>
            <!-- Evaluamos la ejecucion de la funci�n fullName mediante el uso
            de la doble llave. -->
            Full Name: {{fullName()}}
        </div>
        <script>
            /**
             * Crear un controlador es bastante sencillo, tan solo basta con 
             * asignarle un nombre e inyectar las dependencias. En primera 
             * instancia, todo controlador tiene un $scope asociado, por ende, 
             * vemos que inyectamos el $scope dentro del controlador. Ahora bien, 
             * podemos inyectar otros componentes dentro del controlador, sean 
             * nativos de AngularJS o los nuestros propios. 
             * Como vemos AngularJS hace un uso intenso de la inyecci�n de 
             * dependencias en todos sus componentes, para inyectar nuevas 
             * dependencias basta con separarlos por comas.
             * 
             * app.controller('mainController', function($scope, servicio, fabrica){
             *    contenido
             * });
             */
            var app = angular.module('myApp', []);
            app.controller('personCtrl', function ($scope) {
                // Asociamos valor a las variables firstName y lastName.
                $scope.firstName = "John";
                $scope.lastName = "Doe";
                // Definimos la funcion fullName que retorna el resultado de la
                // concatenaci�n de las variables firstName y lastName.
                $scope.fullName = function () {
                    return $scope.firstName + " " + $scope.lastName;
                }
            });
        </script>
    </body>
</html>