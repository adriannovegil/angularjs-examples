<!DOCTYPE html>
<html>
    <head>
        <title>Using ng-binding with numbers</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app e inicializamos
        dos variables de aplicación, "quantity" y "cost" -->
        <div ng-app="" ng-init="quantity = 1;
                cost = 5">
            <!-- En este caso, asociamos mediante binding el resultado de evaluar
            la expresión quantity * cost al atributo innerHTML del span en el que
            hemos indicado la directiva ng-bind.-->
            <p>Total in dollar: <span ng-bind="quantity * cost"></span></p>
        </div>
    </body>
</html>