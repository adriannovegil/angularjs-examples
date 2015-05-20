<!DOCTYPE html>
<html>
    <head>
        <title>Expression with strings</title>
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <!-- Indicamos el "owner" de AngularJS con la directiva np-app e inicializamos
        dos variables de aplicaci�n, "firstName" y "lastName" -->
        <div ng-app="" ng-init="firstName = 'John';
                lastName = 'Doe'">
            <!-- Evaluamos la expresi�n usando la doble llave. En este caso el 
            resultado de la operaci�n es la concatenaci�n de firstName y de
            lastName.-->
            <p>The full name is: {{ firstName + " " + lastName}}</p>
        </div>
    </body>
</html>