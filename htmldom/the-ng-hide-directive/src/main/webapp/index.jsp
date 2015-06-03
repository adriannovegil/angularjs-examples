<!DOCTYPE html>
<html>
    <head>
        <title>The ng-hide Directive</title>
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
        -->
        <div ng-app="">
            <!-- Mediante la directiva hide podemos mostrar u ocultar un elemento
            HTML.-->
            <p ng-hide="true">I am not visible.</p>
            <p ng-hide="false">I am visible.</p>
        </div> 
    </body>
</html>