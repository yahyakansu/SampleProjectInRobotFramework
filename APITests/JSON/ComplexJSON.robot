*** Settings ***
Library  JSONLibrary
Library  os
Library  Collections
Library  RequestsLibrary

*** Variables ***
${base_url}  https://restcountries.eu

*** Test Cases ***
Get Country Info
    Create Session  mysession  ${base_url}
    ${response}=  Get On Session  mysession  /rest/v2/alpha/IN

    ${json_object}=  To Json  ${response.content}

#Single data validation
    ${countryName}=  Get Value From Json  ${json_object}  $.name
    Should Be Equal  ${countryName[0]}  India

#Single data validation in array
    ${border}=  Get Value From Json  ${json_object}  $.borders[0]
    Should Be Equal  ${border[0]}  AFG

#Multiple data validation in array
    ${borders}=  Get Value From Json  ${json_object}  $.borders
    Log To Console  ${borders[0]}
    Should Contain Any  ${borders[0]}  AFG  BGD  BTN  MMR  CHN