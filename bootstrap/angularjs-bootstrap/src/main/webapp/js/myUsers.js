angular.module('myApp', []).controller('userCtrl', function ($scope) {
    // Inicializamos las variables de aplicación.
    $scope.fName = '';
    $scope.lName = '';
    $scope.passw1 = '';
    $scope.passw2 = '';
    // Cargamos la lista inicial de usuarios.
    $scope.users = [
        {id: 1, fName: 'Hege', lName: "Pege"},
        {id: 2, fName: 'Kim', lName: "Pim"},
        {id: 3, fName: 'Sal', lName: "Smith"},
        {id: 4, fName: 'Jack', lName: "Jones"},
        {id: 5, fName: 'John', lName: "Doe"},
        {id: 6, fName: 'Peter', lName: "Pan"}
    ];
    $scope.edit = true;
    $scope.error = false;
    $scope.incomplete = false;
    // Funcion de edición de usuarios.
    $scope.editUser = function (id) {
        // Si se pasa como parametro la cadena 'new' creamos un nuevo registro.
        // en caso contrario, suponemos que se ha recivido un identificador.
        if (id === 'new') {
            // Inicializamos los datos para un nuevo registro.
            $scope.edit = true;
            $scope.incomplete = true;
            // Inicializamos los input con valores vacío.
            $scope.fName = '';
            $scope.lName = '';
        } else {
            // Al indicar la variable edit a false, los input de nombre y apellido
            // aparecerán desactivados.
            $scope.edit = false;
            // Rectificamos el id para poder acceder directamente al array a partir
            // del id de la vista para acceder a los datos.
            // Como se ha hecho un binding entre las variables fName y lName y
            // los campos de la vista, al hacer la siguiente asignación modificamos
            // los valores que se muestran en la vista.
            $scope.fName = $scope.users[id - 1].fName;
            $scope.lName = $scope.users[id - 1].lName;
        }
    };
    // Funciones que llevan a cabo la supervisión de los datos del formulario de
    // edición. Si modificamos algo, se ejecuta la función test.
    $scope.$watch('passw1', function () {
        $scope.test();
    });
    $scope.$watch('passw2', function () {
        $scope.test();
    });
    $scope.$watch('fName', function () {
        $scope.test();
    });
    $scope.$watch('lName', function () {
        $scope.test();
    });
    // Función que se encarga de verificar los datos del formulario.
    $scope.test = function () {
        // Verificamos que el password y el campo que contiene el password repetido
        // tienen el mismo valor.
        if ($scope.passw1 !== $scope.passw2) {
            $scope.error = true;
        } else {
            $scope.error = false;
        }
        // Verificamos si el formulario está completo.
        $scope.incomplete = false;
        if ($scope.edit && (!$scope.fName.length ||
                !$scope.lName.length ||
                !$scope.passw1.length || !$scope.passw2.length)) {
            $scope.incomplete = true;
        }
    };
});