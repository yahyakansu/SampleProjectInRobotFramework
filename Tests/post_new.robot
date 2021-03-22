*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  SeleniumLibrary

*** Variables ***
${base_url}  https://reqres.in/api
${post_req}  users

*** Test Cases ***
POST to $BASE_URL/users to create a new user
    [Documentation]  Create user and verify response is given with the expected JSON attributes.

    Create Session  mySession  ${base_url}
    ${body}=  Create Dictionary  name=tyson  job=driver
    ${header}=  Create Dictionary  Content-Type=text/plain
    Sleep  1s
    ${response}=  post on session  mySession  ${post_req}  data=${body}  headers=${header}

    #Validation
    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}  201
    ${res_body}=  convert to string  ${response.content}
    should contain  ${res_body}  id