*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${base_url}  http://api.cybertektraining.com/
${who}  students


*** Test Cases ***
Get Students Info
    Create Session  mysession  ${base_url}
    ${response}=  Get On Session  mysession  ${who}

#    log to console  ${response.status_code} #200
#    log to console  ${response.content}     #Body
#    log to console  ${response.headers}     #info

    #VALIDATIONS
    ${status_code}=  Convert To String  ${response.status_code}
    Should Be Equal  ${status_code}  200

    ${body}=   Convert To String  ${response.content}
    Should Contain  ${body}  Chicago

    ${contentTypeValue}=  Get From Dictionary  ${response.headers}  Content-Type
    Should Be Equal  ${contentTypeValue}  application/hal+json;charset=UTF-8