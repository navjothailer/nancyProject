*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
closeall
    Open Browser    https://demowebshop.tricentis.com/register  chrome
    Maximize Browser Window

    Open Browser    https://profile.w3schools.com/log-in    chrome
    Maximize Browser Window
    #Close Browser
    Close All Browsers