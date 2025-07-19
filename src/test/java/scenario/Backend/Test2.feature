@Test
Feature: Validate GBP Currency Description

  Background:
    Given url baseUrl


  Scenario: Validate  description for GBP Currency
    Given path '/v1/bpi/currentprice.json'
    When method Get
    Then status 200
    And print response
    # Validating Currency GBP Response
    And match response.bpi.GBP.description == "British Pound Sterling"