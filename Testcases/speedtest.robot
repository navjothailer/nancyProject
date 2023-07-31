*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Registertest
    ${spead}=   get selenium speed
    Log To Console    ${spead}
    Open Browser    https://demowebshop.tricentis.com/register  chrome
    Maximize Browser Window
    Sleep    5
    Select Radio Button    Gender    M
    Input Text  name:FirstName     inderdeep
    Input Text   name:LastName    singh
    Set Selenium Speed    3 seconds
    Input Text  name:Email     abc@gamil.com
    Input Text  name:Password     inderdeep@1
    Input Text  name:ConfirmPassword     inderdeep@1
     ${spead}=   get selenium speed
    Log To Console    ${spead}


