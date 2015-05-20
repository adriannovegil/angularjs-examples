<!DOCTYPE html>
<html>
    <head>
        <title>Expression with objects</title>
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app e inicializamos
        dos variables de aplicaci�n, "person". En este caso, la variable person
        es un objeto que tiene dos atributos "firstName" y "lastName". Dichos
        atributos son los que inicializamos.-->
        <div ng-app="" ng-init="person={firstName:'John',lastName:'Doe'}">
            <!-- Mostramos por pantalla el resultado de evaluar el atributo lastName
            del objeto person.-->
            <p>The name is {{ person.firstName }}</p>
        </div>
    </body>
</html>