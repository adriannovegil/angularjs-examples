<!DOCTYPE html>
<html>
    <head>
        <title>Controller In JavaScript File II</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app.
        Además, definimos un controller mediante la directiva ng-controller de
        nombre myCtrl. 
        Los controladores en AngularJS son objetos que permiten desarrollar la 
        lógica de la aplicación, enlaza el ámbito, $scope, con la vista y permite 
        tener un control total de los datos. Explicándolo de otra manera, es el 
        encargado de gestionar los eventos.
        Los controladores se enlazan a la vista mediante la directiva ng-controller.
        Usamos la directiva "ng-controller" para asociar nuestro controlador a 
        nuestra vista, el controlador debemos añadirlo por encima del contenido 
        html en el cual queremos que trabaje.
        -->
        <div ng-app="myApp" ng-controller="namesCtrl">
            <ul>
                <!-- Iteramos sobre la lista names usando la directiva ng-repeat. 
                En cada iteración se añade un nuevo elemento li. -->
                <li ng-repeat="x in names">
                    <!-- Evaluamos la expresión que concatena los valores de los
                    atributos name y country del objeto x.-->
                    {{ x.name + ', ' + x.country}}
                </li>
            </ul>
        </div>
        <!-- Importamos el fichero que contiene el código del controller. -->
        <script src="js/namesController.js"></script>
    </body>
</html>