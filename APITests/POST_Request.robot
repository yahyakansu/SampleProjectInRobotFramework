*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  Collections

*** Variables ***
${base_url}  http://api.cybertektraining.com/teacher

*** Test Cases ***
Put Teacher Information
    Create Session  mysession  ${base_url}
    ${body}=  Create Dictionary  batch=14  birthDate=01/01/2010  department=string  emailAddress=test@gmail.com  firstName=Asley  gender=male  joinDate=03/05/2012  lastName=Jobs  password=testpass  phone=123-234-3456  premanentAddress=California  salary=1500  section=string  subject=Programming
    ${header}=  Create Dictionary  Content-Type=application/json
    Sleep  1s
    ${response}=  POST On Session  mysession  /create  data=${body}  headers=${header}

    Log To Console  ${response.status_code}
    Log To Console  ${response.content}

    #VALIDATIONS
    ${status_code}=  Convert To String  ${response.status_code}
    Should Be Equal  ${status_code}  200
    ${res_body}=  Convert To String  ${response.content}
    Should Contain  ${res_body}  Asley