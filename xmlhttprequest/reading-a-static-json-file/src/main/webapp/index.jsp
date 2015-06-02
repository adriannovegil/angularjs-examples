<!DOCTYPE html>
<html>
    <head>
        <title>Reading A Static JSON File</title>
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
        <div ng-app="myApp" ng-controller="customersCtrl">
            <!-- Usamos la directiva ng-repeat para iterar sobre los datos de
            names. Estos datos son los que se han recuperado por http desde el
            servidor.-->
            <ul>                
                <li ng-repeat="x in names">
                    <!-- Evaluamos la expresión cuyo resultado es la de concatenar
                    el nombre y el pais del objeto actual.-->
                    {{ x.Name + ', ' + x.Country}}
                </li>
            </ul>
        </div>
        <!-- Implementamos el controller. -->
        <script>
            var app = angular.module('myApp', []);
            app.controller('customersCtrl', function ($scope, $http) {
                // Solicitamos que se recupere el fichero que esta situado en
                // data/data.json.
                $http.get("data/data.json")
                        // Si todo se ha hecho correctamente, asignamos el 
                        // resultado a la variable del contexto scope names.
                        .success(function (response) {
                            $scope.names = response.records;
                        });
            });
        </script>
    </body>
</html>