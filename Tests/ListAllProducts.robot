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
    Set Selenium Speed  1s
    HomePage.Click the Main Button
    HomePage.Click the All Collections Button
