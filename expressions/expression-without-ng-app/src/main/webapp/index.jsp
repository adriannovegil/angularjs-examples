<!DOCTYPE html>
<html>
    <head>
        <title>Expression without ng-app</title>
        <!-- Anhadimos la librería de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <p>Si no especificamos la sirectiva ng-app, el navegador hara el render 
            del HTML sin tener en cuenta la expresión. Simplemente mostrará la 
            cadena de texto "My first expression: {{ 5 + 5 }}" tal cual la hemos 
            especificado.</p>
        <!-- Expresión sin haber indicado la directiva ng-app. En este caso
        no se va a mostrar el resultado de haber evaluado la expresión ya que 
        al no aber especificado la directiva ng-app, AngularJS no intervendrá.-->
        <div>
            <p>My first expression: {{ 5 + 5 }}</p>
        </div>
        <!-- Expresión habiendo indicado la directiva ng-app. En este caso, la 
        expresión indicada entre llavesdobles será evaluada por AngularJS y se
        mostrará por pantalla el resultado de la suma de 5 + 5.-->
        <div ng-app="">
            <p>My first expression: {{ 5 + 5 }}</p>
        </div>
    </body>
</html>