<!DOCTYPE html>
<html>
    <head>
        <title>The ng-disable Directive</title>
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app.
        Adem�s, definimos un controller mediante la directiva ng-controller.
        Los controladores en AngularJS son objetos que permiten desarrollar la 
        l�gica de la aplicaci�n, enlaza el �mbito, $scope, con la vista y permite 
        tener un control total de los datos. Explic�ndolo de otra manera, es el 
        encargado de gestionar los eventos.
        -->
        <div ng-app="" ng-init="mySwitch=true">
            <p>
                <!-- Mediante la directiva ng-disabled asociamos el valor de la
                variable de aplicaci�n mySwitch al atributo disabled del control
                HTML.-->
                <button ng-disabled="mySwitch">Click Me!</button>
            </p>
            <p>
                <!-- Con ng-model hacemos el bind del valor del input con la 
                variable mySwitch.-->
                <input type="checkbox" ng-model="mySwitch"/>Button
            </p>
            <p>
                <!-- Evaluamos la expresi�n que nos muestra por pantalla el valor
                de la variable mySwitch.-->
                {{ mySwitch}}
            </p>
        </div>
    </body>
</html>