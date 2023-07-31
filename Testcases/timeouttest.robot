*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Registertest1

    Open Browser    https://demowebshop.tricentis.com/register  chrome
    Maximize Browser Window
    ${time}=    Get Selenium Timeout
    Log To Console   ${time}

    Set Selenium Timeout    10 sec
    Wait Until Page Contains    Registeration   #registeratin page ch hai ni, regiter hi te chlo ga wait time is 5sec

    Select Radio Button    Gender    M
    Input Text  name:FirstName     inderdeep
    Input Text   name:LastName    singh

    Input Text  name:Email     abc@gamil.com
    Input Text  name:Password     inderdeep@1
    Input Text  name:ConfirmPassword     inderdeep@1



