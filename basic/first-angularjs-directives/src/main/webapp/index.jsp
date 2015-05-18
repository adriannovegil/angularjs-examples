<!DOCTYPE html>
<html>
    <head>
        <title>My first AngularJS Directives</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>
        <div ng-app="" ng-init="firstName = 'John'">
            <p>The name is <span ng-bind="firstName"></span></p>
        </div>
    </body>
</html>