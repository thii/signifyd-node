'use strict'

got = require 'got'
API_ENDPOINT = 'https://api.signifyd.com/v2/cases/'

class Signifyd
  constructor: (apiKey) ->
    @options =
      headers: 'Authorization': 'Basic ' + new Buffer(apiKey).toString('base64')

  getAnalysis: (caseId, callback) ->
    got API_ENDPOINT + caseId + '/analysis', @options, (err, data, res) ->
      if err
        console.log err
        callback err, null
        return
      callback err, JSON.parse data

  getEntries: (caseId, callback) ->
    got API_ENDPOINT + caseId + '/entries', @options, (err, data, res) ->
      if err
        console.log err
        callback err, null
        return
      callback err, JSON.parse data

  getNotes: (caseId, callback) ->
    got API_ENDPOINT + caseId + '/notes', @options, (err, data, res) ->
      if err
        console.log err
        callback err, null
        return
      callback err, JSON.parse data

  getOrder: (caseId, callback) ->
    got API_ENDPOINT + caseId + '/order', @options, (err, data, res) ->
      if err
        console.log err
        callback err, null
        return
      callback err, JSON.parse data

  getScore: (caseId, callback) ->
    got API_ENDPOINT + caseId, @options, (err, data, res) ->
      if err
        console.log err
        callback err, null
        return
      responseData = JSON.parse data
      callback err, responseData.adjustedScore

module.exports = Signifyd
