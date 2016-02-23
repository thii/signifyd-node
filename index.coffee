'use strict'

got = require 'got'
API_ENDPOINT = 'https://api.signifyd.com/v2/cases/'

class Signifyd
  constructor: (apiKey) ->
    @options =
      headers: 'Authorization': 'Basic ' + new Buffer(apiKey).toString('base64')

  getScore: (caseId, callback) ->
    got API_ENDPOINT + caseId, @options, (err, data, res) ->
      if err
        console.log err
        callback err, null
        return
      responseData = JSON.parse data
      callback err, responseData.adjustedScore

module.exports = Signifyd
