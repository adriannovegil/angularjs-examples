<!DOCTYPE html>
<html>
    <head>
        <title>My first AngularJS Expression</title>
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>
        <div ng-app="">
            <!-- AngularJS permite la definici�n de expresiones, por ejemplo, de
                tipo aritm�tico expresadas entre la doble llave. A continuaci�n se
                muestra un ejemplo de esto.-->
            <p>My first expression: {{ 3 + 3}}</p>
        </div>
    </body>
</html>