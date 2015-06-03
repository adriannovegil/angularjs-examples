<!DOCTYPE html>
<html>
    <head>
        <title>AngularJS Validation</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>  
        <h2>Validation Example</h2>
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
        <form ng-app="myApp" ng-controller="validateCtrl" 
              name="myForm" novalidate>
            <p>Username:<br>
                <!-- Hacemos binding con entre el input y la variable de aplicación
                user. Marcamos el input como requerido.-->
                <input type="text" name="user" ng-model="user" required>
                <!-- Empleamos la directiva ng-show para mostrar u ocultar la
                capa que contiene el mensaje de error.-->
                <span style="color:red" ng-show="myForm.user.$dirty && myForm.user.$invalid">
                    <!-- Mensaje de error mostrado en el caso de que el campo sea
                    requerido.-->
                    <span ng-show="myForm.user.$error.required">Username is required.</span>
                </span>
            </p>
            <p>Email:<br>
                <input type="email" name="email" ng-model="email" required>
                <!-- Empleamos la directiva ng-show para mostrar u ocultar la
                capa que contiene el mensaje de error.-->
                <span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid">
                    <!-- Mensaje de error mostrado en el caso de que el campo sea
                    requerido.-->
                    <span ng-show="myForm.email.$error.required">Email is required.</span>
                    <!-- Mensaje de error mostrado en el caso de que el campo esté
                    mal formado.-->
                    <span ng-show="myForm.email.$error.email">Invalid email address.</span>
                </span>
            </p>
            <p>
                <!-- Activamos o desactivamos el input de tipo submit en funcion
                de si alguna de las variables es inválida.-->
                <input type="submit" ng-disabled="myForm.user.$dirty && myForm.user.$invalid ||
                                    myForm.email.$dirty && myForm.email.$invalid">
            </p>
        </form>
        <!-- Implementación del controller. -->
        <script>
            var app = angular.module('myApp', []);
            // Implementamos el controller.
            app.controller('validateCtrl', function ($scope) {
                // Definimos las variables de aplicación user y email y les 
                // asignamos un valor inicial.
                $scope.user = 'John Doe';
                $scope.email = 'john.doe@gmail.com';
            });
        </script>
    </body>
</html>