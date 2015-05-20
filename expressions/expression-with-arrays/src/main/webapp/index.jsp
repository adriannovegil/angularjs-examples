<!DOCTYPE html>
<html>
    <head>
        <title>Expression with arrays</title>
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app e inicializamos
        dos variables de aplicaci�n, "points". En este caso, la variable points
        es un array con 5 valores.-->
        <div ng-app="" ng-init="points = [1, 15, 19, 2, 40]">
            <!-- En este caso, evaluamos la expresi�n que muestra el valor del 
            array que est� en la posici�n 2.-->
            <p>The third result is {{ points[2]}}</p>
        </div>
    </body>
</html>