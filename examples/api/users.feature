Feature: Quick API test example
  for help, see: https://github.com/intuit/karate/wiki/ZIP-Release

  Background:
    * url 'https://webdriverjsdemo.github.io/'

  Scenario: get all users should return array of one user
    Given path 'users.json'
    When method get
    Then status 200
    And match response == '#[1]'

  Scenario: get a users should include 
    Given path 'user.json'
    When method get
    Then status 200
    And match response.name == '#string'
    And match response.age == '#number'
