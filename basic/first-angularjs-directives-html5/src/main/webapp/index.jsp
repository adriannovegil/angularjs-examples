<!DOCTYPE html>
<html>
    <head>
        <title>My first AngularJS Directives (with valid HTML5)</title>
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>
        <div data-ng-app="" data-ng-init="firstName = 'John'">
            <p>The name is <span data-ng-bind="firstName"></span></p>
        </div>
    </body>
</html>