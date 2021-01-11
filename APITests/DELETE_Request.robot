*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${base_url}  http://api.cybertektraining.com/teacher

*** Test Cases ***
Delete teacher 12302
    Create Session  mysession  ${base_url}
    ${response}=  DELETE On Session  mysession  /delete/12302

    #VALIDATIONS
    ${status_code}=  Convert To String  ${response.status_code}
    Should Be Equal  ${status_code}  200
