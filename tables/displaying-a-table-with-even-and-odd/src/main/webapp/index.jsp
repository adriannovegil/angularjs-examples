<!DOCTYPE html>
<html>
    <head>
        <title>Displaying A Table With Even And Odd</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
        <!-- Añadimos las hojas de estilo al proyecto -->
        <link rel="stylesheet" href="css/styles.css">
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
            <!-- Usamos la directiva ng-repeat para iterar sobre los datos que
            hemos recuperado desde el servidor y componer las filas y las columnas
            de la tabla.-->
            <table>                
                <!-- Una fila por cada entrada de names. -->
                <tr ng-repeat="x in names">
                    <!-- Creamos las columnas a partir de los datos de la variable
                    x.
                    En función de si estamos en una fila par o impar, añadimos 
                    manualmente el estilo del fondo de la tabla.-->
                    <td ng-if="$odd" style="background-color:#f1f1f1">
                        {{ x.Name}}</td>
                    <td ng-if="$even">
                        {{ x.Name}}</td>
                    <td ng-if="$odd" style="background-color:#f1f1f1">
                        {{ x.Country}}</td>
                    <td ng-if="$even">
                        {{ x.Country}}</td>
                </tr>
            </table>
        </div>
        <!-- Implementamos el controller. -->
        <script>
            var app = angular.module('myApp', []);
            app.controller('customersCtrl', function ($scope, $http) {
                // Solicitamos que se recupere el fichero que esta situado en
                // data/data.json.
                $http.get("data/customers.json")
                        // Si todo se ha hecho correctamente, asignamos el 
                        // resultado a la variable del contexto scope names.
                        .success(function (response) {
                            $scope.names = response.records;
                        });
            });
        </script>
    </body>
</html>