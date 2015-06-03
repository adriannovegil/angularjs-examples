<!DOCTYPE html>
<html>
    <head>
        <title>AngularJS Forms</title>
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
        <div ng-app="myApp" ng-controller="formCtrl">
            <form novalidate>
                First Name:<br>
                <!-- Hacemos un binding entre el control HTML input y la variable
                de aplicaci�n user.firstName.-->
                <input type="text" ng-model="user.firstName"><br>
                Last Name:<br>
                <!-- Hacemos un binding entre el control HTML input y la variable
                de aplicaci�n user.lastName.-->
                <input type="text" ng-model="user.lastName">
                <br><br>
                <!-- Asociamos el evento de click mediante la directiva ng-click 
                al boton. En el click sobre el bot�n ejecutamos la funci�n reset.-->
                <button ng-click="reset()">RESET</button>
            </form>
            <!-- Mostramos por pantalla los datos de user y master. Para ellos
            evaluamos el valor de la vairable mediante el uso de la doble llave.-->
            <p>form = {{user}}</p>
            <p>master = {{master}}</p>
        </div>
        <!-- Implementaci�n del controller. -->
        <script>
            var app = angular.module('myApp', []);
            // Implementamos el controller.
            app.controller('formCtrl', function ($scope) {
                // Definimos el objeto master con los atributos firstName y lastName
                // y les asignamos un valor. Este objeto ser� nuestro referente
                // y lo usaremos para resetear los valores del formulario.
                $scope.master = {
                    firstName: "John",
                    lastName: "Doe"
                };
                // Definimos la funci�n reset que copia sobre el objeto user que
                // modificamos a trav�s del formulario los datos originales que
                // hemos definido en el objeto master.
                $scope.reset = function () {
                    // Hacemos la copia de los datos.
                    $scope.user = angular.copy($scope.master);
                };
                // En el momento de arranque de la aplicaci�n llamamos al m�todo 
                // reset que inicializar� por primera vez los datos del objeto 
                // user.
                $scope.reset();
            });
        </script>
    </body>
</html>