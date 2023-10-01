Feature: Implicit Auth

  Background:
    * url 'http://mdpauth.msghubtmp.qrun.diasoft.ru/mdpauth/oauth/'

  Scenario: Get access token
    * path 'token'
    * form field grant_type = 'password'
    * form field username = 'guest'
    * form field password = '12345678'
    * form field scope = 'openid'
    * form field client_id = 'client'
    * form field client_secret = 'secret'
    * method post
    * status 200
    * print response
    * def accessToken = response.access_token
    #* header Authorization = 'Bearer ' + accessToken