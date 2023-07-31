*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Registertest2

    Open Browser    https://demowebshop.tricentis.com/register  chrome
    Maximize Browser Window
    ${implicittime}=    Get Selenium Implicit Wait
    Log To Console     ${implicittime}

    Set Selenium Implicit Wait    10 seconds

    ${implicittime}=    Get Selenium Implicit Wait
    Log To Console     ${implicittime}

    Select Radio Button    Gender    M
    Input Text  name:FirstName1     inderdeep           #wrong locator firstname is correct
    Input Text   name:LastName    singh

    Input Text  name:Email     abc@gamil.com
    Input Text  name:Password     inderdeep@1
    Input Text  name:ConfirmPassword     inderdeep@1
