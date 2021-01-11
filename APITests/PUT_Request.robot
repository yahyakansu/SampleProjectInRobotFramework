*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${base_url}  http://api.cybertektraining.com/teacher

*** Test Cases ***
Put Teacher Information
    Create Session  mysession  ${base_url}
    ${body}=  Create Dictionary  teacherId=12303  batch=14  birthDate=01/01/2010  department=string  emailAddress=test@gmail.com  firstName=Heidi  gender=female  joinDate=03/05/2012  lastName=Jobs  password=testpass  phone=123-234-3456  premanentAddress=California  salary=1500  section=string  subject=Programming
    ${header}=  Create Dictionary  Content-Type=application/json
    ${response}=  PUT On Session  mysession  /update  data=${body}  headers=${header}

    Log To Console  ${response.status_code}
    Log To Console  ${response.content}

    #VALIDATIONS
    ${status_code}=  Convert To String  ${response.status_code}
    Should Be Equal  ${status_code}  200
    ${res_body}=  Convert To String  ${response.content}
    Should Contain  ${res_body}  Heidi  #updated