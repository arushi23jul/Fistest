@UITest
Feature: Add To Cart Functionality

  Background:
    * configure driver = { type: 'chrome', addOptions: ["--remote-allow-origins=*"] , executable: 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe'}

  Scenario: Add to Cart

    Given driver 'http://www.ebay.com/'
    * driver.maximize()
    * delay(1500)
    And waitUntil("document.readyState == 'complete'")
    And click("//input[@id='gh-ac']")
    And input("//input[@id='gh-ac']", 'book')

    * delay(1500)
    And click("//span[@class='gh-search-button__label']")
    * delay(20000)
    And waitUntil("document.readyState == 'complete'")
    And click("//span[contains(text(),'3 BOOKS: QUOTATIONS FROM CHAIRMAN MAO+FIVE ARTICLE')]")
   # And click("//li[@id='item1ae8dc6873']//img[1]")
    And waitUntil("document.readyState == 'complete'")
    * delay(5000)
    And switchPage('https://www.ebay.com/')
    * driver.screenshot()
    * delay(10000)
    And click("//span[contains(text(),'Add to cart')]")
    And waitUntil("document.readyState == 'complete'")
    * delay(5000)
    * driver.screenshot()
    * def cart_text = text('/html[1]/body[1]/div[2]/div[1]/header[1]/nav[1]/div[2]/div[4]/div[1]/a[1]/span[1]/span[1]')
    * driver.screenshot()
    * print cart_text
    * match cart_text == '1'






