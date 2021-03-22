*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  SeleniumLibrary

*** Variables ***
${base_url}  https://reqres.in/api
${get_req}  users

*** Test Cases ***
GET a list of users from the $BASE_URL/users endpoint
    [Documentation]  Verify response, and report on the number of users returned, for a successful GET request is submitted.

    Create Session  mySession  ${base_url}
    ${response}=  get on session  mySession  ${get_req}

    #Validation
    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}  200
    ${res_body}=  convert to string  ${response.content}
    log  ${response.json()}
    ${value} =	Get From Dictionary	${response.json()}	total


