*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${first_name}   Raedd
${last_name}    Eleyann
${email}    raedd@gmail.com
${my_pass}  raed123!!
${url}  https://magento.softwaretestingboard.com/
${create_an_account_button}    xpath:/html/body/div[2]/header/div[1]/div/ul/li[3]/a
${first_name_input}  id:firstname
${last_name_input}  id:lastname
${email_input}  id:email_address
${password_input}   id:password
${confirm_pass_input}   id:password-confirmation
${create_button}    xpath://*[@id="form-validate"]/div/div[1]/button
*** Test Cases ***
Create an Account
    Open Browser    ${url}    chrome
    Click Element  ${create_an_account_button}
    Input Text  ${first_name_input}  ${first_name}
    Input Text  ${last_name_input}   ${last_name}
    Input Text  ${email_input}   ${email}
    Input Text  ${password_input}    ${my_pass}
    Input Text  ${confirm_pass_input}    ${my_pass}
    Click Element   ${create_button}
    Wait Until Page Contains    Thank you for registering with Main Website Store.
    Close Browser
