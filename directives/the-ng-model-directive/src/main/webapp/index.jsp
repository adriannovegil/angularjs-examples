<!DOCTYPE html>
<html>
    <head>
        <title>The ng-model Directive</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva data-np-app e 
        inicializamos las variables de aplicación, "quantity" y "price" -->
        <div data-ng-app="" data-ng-init="quantity = 1;
                price = 5">
            <h2>Cost Calculator</h2>
            <!-- Hacemos un bind de las variables de aplicación con los controles
            HTML.-->
            Quantity: <input type="number" ng-model="quantity">
            Price: <input type="number" ng-model="price">
            <!-- Evaluamos la expresión mediante el uso de la doble llave. -->
            <p><b>Total in dollar:</b> {{quantity * price}}</p>
        </div>
    </body>
</html>