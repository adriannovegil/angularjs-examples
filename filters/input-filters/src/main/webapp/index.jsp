<!DOCTYPE html>
<html>
    <head>
        <title>Input Filters</title>
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
        <div ng-app="myApp" ng-controller="namesCtrl">
            <p>Filtering input:</p>
            <!-- Hacemos un bind de la variable de aplicación test con el control
            HTML.-->
            <p><input type="text" ng-model="test"></p>
            <!-- Usamos la directiva ng-repeat para iterar sobre name y crear la
            lista. Ademas aplicamos el filtro orderBy que ya hemos visto para 
            reordenar los datos de la colección por país y además, en este ejemplo
            aplicamos el filtro filter que filtra los datos de la colección por
            el valor de la variable test.
            La directiva de filtrado repinta la lista de elementos en caliente
            en base al valor que en cada momento tenga la variable test.-->
            <ul>
                <li ng-repeat="x in names| filter:test | orderBy:'country'">
                    <!-- Evaluamos la expresión que concatena el nombre pasado a
                    mayúsculas, seguido del país.-->
                    {{(x.name| uppercase) + ', ' + x.country}}
                </li>
            </ul>
        </div>
        <!-- Importamos el fichero que contiene el código del controller. -->
        <script src="js/namesController.js"></script>
    </body>
</html>