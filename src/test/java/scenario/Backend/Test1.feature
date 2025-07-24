@Test
Feature: Validate Currency USD,EUR and GBP

        Background:
          Given url baseUrl


  Scenario: Validate Excepted currency code in response
    Given path '/api/v3/coins/bitcoin'
    When method Get
    Then status 200
    And print response
    # Validating response contains all 3 expected currency code
    And match response.market_data.current_price contains {"usd": '#number',"gbp": '#number',"eur": '#number'}
    #Each cryptocurrency has market cap and total volume
    And match response.market_data.market_cap contains {"usd": '#number',"gbp": '#number',"eur": '#number'}
    And match response.market_data.total_volume contains {"usd": '#number',"gbp": '#number',"eur": '#number'}
    # the Price change over the last 24 hrs
    And match response.market_data.price_change_percentage_24h == '#number'
    #Verify HomePage url is not empty
    And match response.links.homepage[0] != ''




