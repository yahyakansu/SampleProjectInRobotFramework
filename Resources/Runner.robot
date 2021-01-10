*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://uenjoy.com/
${browser}  chrome

*** Keywords ***
Start TestCase
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Close TestCase
    Close Browser