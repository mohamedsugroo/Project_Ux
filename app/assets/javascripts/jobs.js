myApp.controller('jobsController', ['$scope','$http',
  function($scope, $http){
    $scope.message = "jobs controller ON";

    $http.get("/jobs.json")
    .then(function(response) {
        $scope.jobsList = response.data;
        console.log($scope.jobsList);
    });

  }
]);