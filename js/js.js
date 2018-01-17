app.controller('homeController', function ($scope, $http, DTOptionsBuilder) {

  $scope.updateTimestamp = null;
  $scope.requestMade     = false;
  $scope.dtOptionsProd   = DTOptionsBuilder.newOptions().withOption('order', [4, 'desc']).withDisplayLength(10).withOption('length', [100]);

  $scope.getTop          = function(){
    $http.post(getTop)
      .then(function (response) {
        $scope.trades = response.data;
      });
  };
  $scope.getTop();

  $scope.addNewTrade     = function () {
    $http.post(addTrade)
      .then(function (response) {
        $scope.trades = response.data;
      });
  };
  $scope.refreshTrades   = function () {
    $http.post(updateTrades)
      .then(function (response) {
        alert('Update Complete');
      });
  };

  $scope.getLastTrades   = function () {

    $http.get(getLastTrades, {params: {'timestamp': $scope.updateTimestamp}})
      .then(function (response) {

        $scope.updateTimestamp = response.data.timestamp ? response.data.timestamp : $scope.updateTimestamp;

        if (response.data.newRecords && $scope.requestMade) {

          if ($scope.trades.length > 40)
            $scope.trades.splice(-(response.data.records.length), response.data.records.length);


          for (var x in response.data.records)
            $scope.trades.push(response.data.records[x]);

        }
        else
          $scope.trades = $scope.requestMade ? $scope.trades : response.data.records;

        $scope.requestMade = true;
      });
  };


});



