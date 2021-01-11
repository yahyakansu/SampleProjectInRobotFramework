*** Settings ***
Library  JSONLibrary
Library  os
Library  Collections

*** Test Cases ***
Testcase1:
    ${json_obj}=  Load Json From File  APITests/JSON/jsonEx.json

    ${firstname_value}=  Get Value From Json  ${json_obj}  $.firstName
    Should Be Equal  ${firstname_value[0]}  Vera

    ${phone_value}=  Get Value From Json  ${json_obj}  $.contact.phone[1]
    Should Be Equal  ${phone_value[0]}  3456546436