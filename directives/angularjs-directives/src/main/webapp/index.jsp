<!DOCTYPE html>
<html>
    <head>
        <title>AngularJS Directives</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app e inicializamos
        dos variables de aplicación, "firstName" -->
        <div ng-app="" ng-init="firstName = 'John'">
            <p>Input something in the input box:</p>
            <!-- Hace un bind del valor del control HTML, en este caso el input
            con la variable de aplicacion "firstName". Esta variable la hemos
            definido mas arriba con usando la directiva ng-init-->
            <p>Name: <input type="text" ng-model="firstName"></p>
            <!-- Mostramos el valor de la variable firstName evaluandola mediante
            el uso de la doble llave.-->
            <p>You wrote: {{ firstName}}</p>
        </div>
    </body>
</html>