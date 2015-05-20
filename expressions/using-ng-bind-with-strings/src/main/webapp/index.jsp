<!DOCTYPE html>
<html>
    <head>
        <title>Using ng-bind with strings</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app e inicializamos
        dos variables de aplicación, "firstName" y "lastName" -->
        <div ng-app="" ng-init="firstName = 'John';
                lastName = 'Doe'">
            <!-- En este caso asociamos mediante el mecanismo de binding de AngularJS
            el resultado de evaluar la exprsión de concatenación al atributo 
            innerHTML del span.-->
            <p>The full name is: <span ng-bind="firstName + ' ' + lastName"></span></p>
        </div>
    </body>
</html>