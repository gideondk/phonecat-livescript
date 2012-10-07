mod = {}

mod.PhoneListCtrl = [
  '$scope'
  'Phone'

  (scope, phone) ->
    scope.phones = phone.query()
    scope.orderProp = 'age'
]

mod.PhoneDetailCtrl = [
  '$scope'
  '$routeParams'
  'Phone'

  (scope, routeParams, phone) ->
    args = 
      phoneId: routeParams.phoneId

    respData <- phone.get arguments
    scope.phone = respData
    scope.mainImageUrl = respData.images[0]

    scope.setImage = (x) -> scope.mainImageUrl = x
]

angular.module('app.controllers', []).controller mod 
