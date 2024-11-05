Feature: Login API Tests

  Background:
    * url 'https://api.demoblaze.com/login'

  Scenario: Usuario y password correctos en login
    Given request {username: "1725304938", password: "cGFzc3dvcmQxMjM="}
    When method POST
    Then status 200
    * print response


  Scenario: Usuario y password incorrectos en login
    Given request { username: username, password: wrongPassword }
    When method POST
    Then status 200
    And match response == {"errorMessage":"Wrong password."}
