# Declare app level module which depends on filters, and services
App = angular.module \app <[ngCookies ngResource app.controllers app.directives app.filters app.services]>

App.config <[$routeProvider $locationProvider]> ++ ($routeProvider, $locationProvider, config) ->
  $routeProvider
    .when \/view1 templateUrl: \/partials/app/partial1.html
    .when \/view2 templateUrl: \/partials/app/partial2.html
    # Catch all
    .otherwise redirectTo: \/view1

  # Without serve side support html5 must be disabled.
  $locationProvider.html5Mode false