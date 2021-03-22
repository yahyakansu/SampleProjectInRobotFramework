*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  SeleniumLibrary

*** Variables ***
${base_url}  https://reqres.in/api
${del_req}  users/2

*** Test Cases ***
DELETE a user
    [Documentation]  Verify proper response is received.

    create session  mySession  ${base_url}
    ${response}=  delete request  mySession  ${del_req}

#    Validation
    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}  204