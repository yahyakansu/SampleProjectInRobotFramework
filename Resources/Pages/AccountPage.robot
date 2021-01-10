*** Variables ***
${Email}  id:CustomerEmail
${Password}  id:CustomerPassword
${CreatAccount}  link:Create Account
${SignIn}  xpath://*[@id="customer_login"]/p[1]/input

*** Keywords ***
Enter Email in To The Box
    [Arguments]  ${emailText}
    Input Text  ${Email}    ${emailText}

Enter Password in To The Box
    [Arguments]  ${passText}
    Input Text  ${Password}   ${passText}

Click To The SignIn Button
    Click Element   ${SignIn}