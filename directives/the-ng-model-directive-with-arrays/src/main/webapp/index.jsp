<!DOCTYPE html>
<html>
    <head>
        <title>The ng-model Directive (with Arrays)</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva data-np-app e 
        inicializamos la variable de aplicación, "names" -->
        <div data-ng-app="" data-ng-init="names = ['Jani', 'Hege', 'Kai']">
            <p>Looping with ng-repeat:</p>
            <ul>
                <!-- Usamos la directiva data-ng-repear para iterar sobre el array
                name. Como iterador usamos la variable x.-->
                <li data-ng-repeat="x in names">
                    <!-- Mostramos el valor de la variable x usando la doble 
                    llave. -->
                    {{ x }}
                </li>
            </ul>
        </div>
    </body>
</html>