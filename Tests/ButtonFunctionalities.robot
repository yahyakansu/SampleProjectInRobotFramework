*** Settings ***
Documentation  Buttons Functionalities
Resource  ../Resources/Runner.robot
Resource  ../Resources/Pages/HomePage.robot

Test Setup  Runner.Start TestCase
Test Teardown  Runner.Close TestCase

*** Test Cases ***
Verify the Ride-on button
    [Documentation]  Ride-on button which top on the page should be work
    [Tags]  Functional
    HomePage.Click the Ride-on Button

