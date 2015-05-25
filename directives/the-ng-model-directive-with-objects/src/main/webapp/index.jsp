<!DOCTYPE html>
<html>
    <head>
        <title>The ng-model Directive (with Objects)</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva data-np-app e 
        inicializamos la variable de aplicación, "names". En este caso, la variable
        names es un array de objetos, cada uno de estos objetos contiene dos 
        atributos, el nombre y el pais.-->
        <div ng-app="" ng-init="names=[ {name:'Jani',country:'Norway'},
            {name:'Hege', country:'Sweden'},
            {name:'Kai', country:'Denmark'}]">
            <p>Looping with objects:</p>
            <ul>
                <!-- Iteramos sobre la variable array names usando la directiva
                ng-repear.-->
                <li ng-repeat="x in names">
                    <!-- Evaluamos el valor de la expresión que concatena el nombre
                    y el pais usando la doble llave.-->
                    {{ x.name + ', ' + x.country}}</li>
            </ul>

        </div>
    </body>
</html>