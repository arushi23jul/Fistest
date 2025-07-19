@Test
Feature: Validate Currency USD,EUR and GBP

        Background:
          Given url baseUrl


  Scenario: Validate Excepted currency code in response
    Given path '/v1/bpi/currentprice.json'
    When method Get
    Then status 200
    And print response
    # Validating response contins all 3 excpected curreny code
    And match response.bpi == {"USD": '#present',"GBP": '#present',"EUR": '#present'}

