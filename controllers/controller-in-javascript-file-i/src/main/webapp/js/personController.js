/**
 * Controller de angular para nuestra aplicación.
 */
angular.module('myApp', []).controller('personCtrl', function ($scope) {
    // Asociamos valor a las variables firstName y lastName.
    $scope.firstName = "John";
    $scope.lastName = "Doe";
    // Definimos la funcion fullName que retorna el resultado de la concatenación 
    // de las variables firstName y lastName.
    $scope.fullName = function () {
        return $scope.firstName + " " + $scope.lastName;
    };
});