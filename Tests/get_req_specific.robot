*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  SeleniumLibrary

*** Variables ***
${base_url}  https://reqres.in/api
${get_req}  users/2
${get_invalid_user}


*** Test Cases ***
Get specific user with valid name
    [Documentation]  Verify response and correctly structured JSON is data returned for a specific, valid user.

    create session  mySession  ${base_url}
    ${response}=  get on session  mySession  ${get_req}

    #Validation
    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}  200

#    'id': 2, 'email': 'janet.weaver@reqres.in', 'first_name': 'Janet'
    ${resp_body}=  convert to string  ${response.content}
    should contain  ${resp_body}  janet.weaver@reqres.in


Get specific user with invalid name
    [Documentation]  Verify response when an invalid user is requested.

    create session  mySession  ${base_url}
    ${response}=  get on session  mySession  ${get_invalid_user}

    #Validation
    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}  404