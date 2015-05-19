<!DOCTYPE html>
<html>
    <head>
        <title>Expression without ng-app</title>
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <body>        
        <p>Si no especificamos la sirectiva ng-app, el navegador hara el render 
            del HTML sin tener en cuenta la expresi�n. Simplemente mostrar� la 
            cadena de texto "My first expression: {{ 5 + 5 }}" tal cual la hemos 
            especificado.</p>
        <!-- Expresi�n sin haber indicado la directiva ng-app. En este caso
        no se va a mostrar el resultado de haber evaluado la expresi�n ya que 
        al no aber especificado la directiva ng-app, AngularJS no intervendr�.-->
        <div>
            <p>My first expression: {{ 5 + 5 }}</p>
        </div>
        <!-- Expresi�n habiendo indicado la directiva ng-app. En este caso, la 
        expresi�n indicada entre llavesdobles ser� evaluada por AngularJS y se
        mostrar� por pantalla el resultado de la suma de 5 + 5.-->
        <div ng-app="">
            <p>My first expression: {{ 5 + 5 }}</p>
        </div>
    </body>
</html>