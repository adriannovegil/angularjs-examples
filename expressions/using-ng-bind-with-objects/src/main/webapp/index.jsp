<!DOCTYPE html>
<html>
    <head>
        <title>Using ng-bind with objects</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app e inicializamos
        dos variables de aplicación, "person". En este caso, la variable person
        es un objeto que tiene dos atributos "firstName" y "lastName". Dichos
        atributos son los que inicializamos.-->
        <div ng-app="" ng-init="person={firstName:'John',lastName:'Doe'}">
            <!-- En este caso, asociamos al atributo innerHTML del span el valor
            del atributo firstName del objeto person.-->
            <p>The name is <span ng-bind="person.firstName"></span></p>
        </div>
    </body>
</html>