# # Declare app level module which depends on filters, and services
App = angular.module \app, <[ ngCookies ngResource app.controllers app.filters app.services ]>

App.config [ '$routeProvider' '$locationProvider'
($routeProvider, $locationProvider, config) ->
  $routeProvider
    .when \/phones, templateUrl: \/partials/app/phone-list.html controller: \PhoneListCtrl
    .when \/phones/:phoneId, templateUrl: \/partials/app/phone-detail.html controller: \PhoneDetailCtrl
    # Catch all
    .otherwise redirectTo: \/phones

  # Without serve side support html5 must be disabled.
  $locationProvider.html5Mode false
]
