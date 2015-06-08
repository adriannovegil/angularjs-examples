<!DOCTYPE html>
<html>
    <head>
        <title>AngularJS Bootstrap</title>
        <!-- Importamos la hoja de estilos de bootstrap -->
        <link rel="stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <!-- Anhadimos la librer�a de AngularJS -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    </head>
    <!-- Indicamos el "owner" de AngularJS con la directiva np-app.
    Adem�s, definimos un controller mediante la directiva ng-controller.
    Los controladores en AngularJS son objetos que permiten desarrollar la 
    l�gica de la aplicaci�n, enlaza el �mbito, $scope, con la vista y permite 
    tener un control total de los datos. Explic�ndolo de otra manera, es el 
    encargado de gestionar los eventos.
    Los controladores se enlazan a la vista mediante la directiva ng-controller.
    Usamos la directiva "ng-controller" para asociar nuestro controlador a 
    nuestra vista, el controlador debemos a�adirlo por encima del contenido 
    html en el cual queremos que trabaje.
    -->
    <body ng-app="myApp" ng-controller="userCtrl">
        <div class="container">
            <h3>Users</h3>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Edit</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Iteramos sobre la colecci�n de datos users y para cada
                    uno de ellos creamos una fila en la tabla.-->
                    <tr ng-repeat="user in users">
                        <td>
                            <!-- Anhadimos el boton de edici�n en la tabla. 
                            Asociamos al evento de click la funci�n de edici�n
                            a la que le pasamos como parametro el id del usuario.
                            -->
                            <button class="btn" ng-click="editUser(user.id)">
                                <span class="glyphicon glyphicon-pencil"></span>��Edit
                            </button>
                        </td>
                        <!-- Evaluamos la expresi�n que muestra por pantalla el
                        nombre del usuario del registro sobre el que estamos
                        iterando.-->
                        <td>{{ user.fName}}</td>
                        <!-- Evaluamos la expresi�n que muestra por pantalla el
                        apellido del usuario del registro sobre el que estamos
                        iterando.-->
                        <td>{{ user.lName}}</td>
                    </tr>
                </tbody>
            </table>
            <!-- Anhadimos el bot�n de creaci�n de nuevos registros. La funci�n
            es la misma que hemos asociado en el bot�n de edici�n en cada una de
            las l�neas. La principal diferencia es que en lugar de pasarle el
            identificador del registro que queremos editar, lo que hacemos es
            pasarle la cadena 'new' que le indica al controller que queremos crear
            y no editar un nuevo registro.-->
            <hr>
            <button class="btn btn-success" ng-click="editUser('new')">
                <span class="glyphicon glyphicon-user"></span>��Create New User
            </button>
            <hr>
            <!-- En funci�n del valor de la variable edit, mostramos una cabecera
            u otra. Para ello usamos la directiva ng-show y ng-hide.-->
            <h3 ng-show="edit">Create New User:</h3>
            <h3 ng-hide="edit">Edit User:</h3>
            <!-- Formulario de creaci�n/edici�n de los datos. -->
            <form class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">First Name:</label>
                    <div class="col-sm-10">
                        <!-- Hacemos binding entre el input y la variable de aplicaci�n
                        fName.
                        El input se activa o desactiva en base al valor de la 
                        variable edit.-->
                        <input type="text" ng-model="fName" ng-disabled="!edit" placeholder="First Name">
                    </div>
                </div> 
                <div class="form-group">
                    <label class="col-sm-2 control-label">Last Name:</label>
                    <div class="col-sm-10">
                        <!-- Hacemos binding entre el input y la variable de aplicaci�n
                        lName.
                        El input se activa o desactiva en base al valor de la 
                        variable edit.-->
                        <input type="text" ng-model="lName" ng-disabled="!edit" placeholder="Last Name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Password:</label>
                    <div class="col-sm-10">
                        <!-- Hacemos binding entre el input y la variable de aplicaci�n
                        passw1.-->
                        <input type="password" ng-model="passw1" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Repeat:</label>
                    <div class="col-sm-10">
                        <!-- Hacemos binding entre el input y la variable de aplicaci�n
                        passw2.-->
                        <input type="password" ng-model="passw2" placeholder="Repeat Password">
                    </div>
                </div>
            </form>
            <!-- Desactivamos el bott�n de creaci�n mientras el formulario no este
            completo o libre de errores.-->
            <hr>
            <button class="btn btn-success" ng-disabled="error || incomplete">
                <span class="glyphicon glyphicon-save"></span>��Save Changes
            </button>
        </div>
        <!-- Importamos el controller y la aplicaci�n. -->
        <script src= "js/myUsers.js"></script>
    </body>
</html>