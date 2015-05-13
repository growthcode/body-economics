var bodyEconomics = angular.module('bodyEconomics', []);

bodyEconomics.controller('DayController', ['$scope', '$http', function($scope, $http){
  $scope.name = "Hethe";
  $scope.date = new Date();
  $scope.days = [];
  $http.get('/days')
  .success(function(data){
    $scope.user = data;
    $scope.days = data.days;
    debugger
  })
  .error(function(xrh){
    console.log("in error callback")
  })
}])
