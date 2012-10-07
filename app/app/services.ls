# Services

mod = {}

mod.Phone = [
  '$resource'

  (res) ->
    q =
      method: 'GET'
      params:	{ phoneId: 'phones' }
      isArray: true

    res \phones/:phoneId.json, {}, query: q
]

angular.module('app.services', ['ngResource']).factory mod