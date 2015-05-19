<!DOCTYPE html>
<html>
    <head>
        <title>My first AngularJS Expression</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>
        <div ng-app="">
            <!-- AngularJS permite la definición de expresiones, por ejemplo, de
                tipo aritmético expresadas entre la doble llave. A continuación se
                muestra un ejemplo de esto.-->
            <p>My first expression: {{ 3 + 3}}</p>
        </div>
    </body>
</html>