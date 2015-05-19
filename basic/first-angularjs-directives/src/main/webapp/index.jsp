<!DOCTYPE html>
<html>
    <head>
        <title>My first AngularJS Directives</title>
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>
        <!-- En este caso le decimos a la aplicaci�n AngularJS que el "owner" es
        el <div> que tenemos a continuaci�n, para ello usamos la directiva ng-app.
        Adem�s, inicializamos la variable de aplicaci�n "firstName" mediante la
        directiva ng-init-->
        <div ng-app="" ng-init="firstName = 'John'">
            <!-- Ahora, recuperamos el valor de la variable de aplicaci�n firstName.
            Para ello usamos la directiva ng-bind que establece un bind entre el
            atributo innerHTML del span donde hemos especificado la directiva y
            la variable de aplicaci�n que indicamos por nombre.-->
            <p>The name is <span ng-bind="firstName"></span></p>
        </div>
    </body>
</html>