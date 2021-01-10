*** Settings ***
Library  SeleniumLibrary  timeout=3s

*** Variables ***
${FirstName}  id:FirstName
${LastName}  id:LastName
${NewEmail}  id:Email
${NewPassword}  id:CreatePassword
${SubmitButton}  xpath://input[@type='submit']

*** Keywords ***
Enter First Name
    [Arguments]  ${nameText}
    Input Text  ${FirstName}  ${nameText}

Enter Last Name
    [Arguments]  ${surnameText}
    Input Text  ${LastName}  ${surnameText}

Enter an Email
    [Arguments]  ${emailText}
    Input Text  ${NewEmail}    ${emailText}

Enter a Password
    [Arguments]  ${passText}
    Input Text  ${NewPassword}  ${passText}

Submit with Button
    Click Element   ${SubmitButton}