<!DOCTYPE html>
<!-- AngularJS extiende las posibilidades de HTML mediante el uso dedirectivas.
Estas directivas no son más que un conjunto de atributos que interpreta el 
framework AngularJS.

 - The ng-app directive defines an AngularJS application.
 - The ng-model directive binds the value of HTML controls (input, select, 
   textarea) to application data.
 - The ng-bind directive binds application data to the HTML view.

En este caso, la directiva ng-app le dice a AngularJS que el tag <html> es el 
"owner" de la aplicación AngularJS.
-->
<html ng-app>
    <head>
        <title>Hello World, AngularJS - ViralPatel.net</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
    </head>
    <body>        
        Write some text in textbox:
        <!-- Definimos un input y le asociamos una variable de aplicación mediante 
        el mecanismo de binding de AngularJS usando la directiva ng-model-->
        <input type="text" ng-model="sometext" />
        <!-- Recuperamos el valor de la variable que hemos asociado al binding.
        Para acceder al valor de dicha variable de sistema que hemos definido 
        arriba usamos la doble llave.-->
        <h1>Hello {{ sometext}}</h1>
    </body>
</html>