*** Settings ***
Documentation  All Products in the page
Library  SeleniumLibrary
Resource  ../Resources/Runner.robot
Resource  ../Resources/Pages/HomePage.robot

Test Setup  Runner.Start TestCase
Test Teardown  Runner.Close TestCase

*** Test Cases ***
Verify the listed products
    [Documentation]  All products displayed on the page should be listed
    [Tags]  Functional
    HomePage.Click the Main Button
    HomePage.Click the All Collections Button
    @{products}=  Get WebElements  xpath://span[@class='grid-product__title']

    FOR  ${i}  IN  @{products}
        ${text}=  Get Text  ${i}
        log to console  ${text}
    END
