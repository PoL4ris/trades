var app            = angular.module('app', ["ngRoute", 'datatables']);
var getTop         = 'lib/Execute.php?e=TopHundredTrades/getTop';
var addTrade       = 'lib/Execute.php?e=TopHundredTrades/add';
var getLastTrades  = 'lib/Execute.php?e=TopHundredTrades/getLast100Trades';
var updateTrades   = 'lib/Execute.php?e=TopHundredTrades/refreshTradesCache';

/**
 * Configure the Routes
 */
app.config(['$routeProvider', function ($routeProvider) {
  $routeProvider
    .when("/", {templateUrl: "vistas/home.html"})
    // else 404
    .otherwise("/404", {templateUrl: "/angularviews/partials/404.html"});

}]);
