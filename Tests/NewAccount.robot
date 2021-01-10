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
    [Documentation]  User able to open the account
    [Tags]  Functional

    HomePage.Open Account Page
    AccountPage.Enter Email in To The Box  hakan@gmail.com
    AccountPage.Enter Password in To The Box  123456
    AccountPage.Click To The SignIn Button

Create a New Account Test
    [Documentation]  New user able to create a new account
    [Tags]  Functional

    HomePage.Open Account Page
    AccountPage.Create a New Account
    RegisterPage.Enter First Name  Salih
    RegisterPage.Enter Last Name  Kalin
    RegisterPage.Enter an Email  salih@gmail.com
    RegisterPage.Enter a Password  123456
    RegisterPage.Submit with Button
