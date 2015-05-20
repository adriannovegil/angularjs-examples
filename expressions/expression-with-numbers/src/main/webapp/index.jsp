<!DOCTYPE html>
<html>
    <head>
        <title>Expression with Numbers</title>
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app e inicializamos
        dos variables de aplicaci�n, "quantity" y "cost" -->
        <div ng-app="" ng-init="quantity = 1; cost = 5">
            <!-- Evaluamos la expresii�n quantity * cost, para ello usamos la 
            doble llave.-->
            <p>Total in dollar: {{ quantity * cost}}</p>
        </div>
    </body>
</html>