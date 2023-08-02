*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
closeall
    Open Browser   https://testautomationpractice.blogspot.com/     chrome
    Click Element    xpath://*[@id="HTML9"]/div[1]/button[1]
    Sleep    5
    #Handle Alert    accept
    #Handle Alert    cancel
    #Handle Alert    leave
    Alert Should Be Present
    #Maximize Browser Window