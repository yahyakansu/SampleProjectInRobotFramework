*** Settings ***
Documentation  Open new user account on the website
Library  SeleniumLibrary
Resource  ../Resources/Runner.robot
Resource  ../Resources/Pages/HomePage.robot
Resource  ../Resources/Pages/AccountPage.robot
Resource  ../Resources/Pages/RegisterPage.robot

Test Setup  Runner.Start TestCase
Test Teardown  Runner.Close TestCase

*** Test Cases ***
Open Account Functionalities
    [Documentation]  New user able to open a new account
    [Tags]  Fucntional

    HomePage.Open Account Page
    AccountPage.Enter Email in To The Box  hakan@gmail.com
    AccountPage.Enter Password in To The Box  123456
    AccountPage.Click To The SignIn Button