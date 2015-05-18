<!DOCTYPE html>
<html ng-app>
    <head>
        <title>Hello World, AngularJS - ViralPatel.net</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
    </head>
    <body>

        Write some text in textbox:
        <!-- Definimos un input y le asociamos una variable mediante el mecanismo
        de binding de AngularJS-->
        <input type="text" ng-model="sometext" />
        <!-- Recuperamos el valor de la variable que hemos asociado al binding -->
        <h1>Hello {{ sometext}}</h1>

    </body>
</html>