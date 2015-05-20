<!DOCTYPE html>
<html>
    <head>
        <title>Using ng-bind with arrays</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app e inicializamos
        dos variables de aplicación, "points". En este caso, la variable points
        es un array con 5 valores.-->
        <div ng-app="" ng-init="points = [1, 15, 19, 2, 40]">
            <!-- En este caso, asociamos el valor de la posición 2 del array al 
            atributo innerHTML del span.-->
            <p>The third result is <span ng-bind="points[2]"></span></p>
        </div>
    </body>
</html>