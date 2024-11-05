Feature: Signup tests for Demoblaze API

  Background:
    * url 'https://api.demoblaze.com'

  Scenario: Crear un nuevo usuario en signup
    Given path '/signup'
    And request { username: 'New1725304928', password: "password123" }
    When method POST
    Then status 200
    * def response = karate.typeOf(response)
    * print response
    And match response == 'string'

  Scenario: Intentar crear un usuario ya existente
    Given path '/signup'
    And request {username: "nuevoUsuario", password: "password123" }
    When method POST
    Then status 200
    * def responseType = karate.typeOf(response)
    And match responseType == 'map'
    And match response == { "errorMessage": "This user already exist." }