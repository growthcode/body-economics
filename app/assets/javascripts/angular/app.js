var bodyEconomics = angular.module('bodyEconomics', []);

bodyEconomics.controller('DayController', ['$scope', '$http', function($scope, $http){
  // $scope.name = "Hethe";
  // $scope.date = new Date();

  $scope.days = [];
  $scope.pointsPicHash = {"one":"one.png", "one_2": "one_2.png", "zero": "zero.png", "zero_2": "zero_2.png", "mOne_2":"mOne_2.png", "mOne_2": "mOne_2.png", "mTwo":"mTwo.png", "mTwo_2": "mTwo_2.png"}
  $http.get('/days')
  .success(function(data){
    $scope.user = data;
    $scope.days = data.days;
    $scope.pointsPicture = function(score){
      switch (score) {
        case 1:
          return "one_2.png"
        case 0:
          return "zero_2.png"
        case -1:
          return "mOne_2.png"
        case -2:
          return "mTwo_2.png"
      }
    }
    debugger
  })
  .error(function(xrh){
    console.log("in error callback")
  })
}])
