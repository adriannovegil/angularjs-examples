<!DOCTYPE html>
<html>
    <head>
        <title>My first AngularJS Directives</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>
        <!-- En este caso le decimos a la aplicación AngularJS que el "owner" es
        el <div> que tenemos a continuación, para ello usamos la directiva ng-app.
        Además, inicializamos la variable de aplicación "firstName" mediante la
        directiva ng-init-->
        <div ng-app="" ng-init="firstName = 'John'">
            <!-- Ahora, recuperamos el valor de la variable de aplicación firstName.
            Para ello usamos la directiva ng-bind que establece un bind entre el
            atributo innerHTML del span donde hemos especificado la directiva y
            la variable de aplicación que indicamos por nombre.-->
            <p>The name is <span ng-bind="firstName"></span></p>
        </div>
    </body>
</html>