*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
tabbedwindowtest
    Open Browser    https://demo.automationtesting.in/Windows.html  chrome
    Click Element    xpath://*[@id="Tabbed"]/a/button
    Switch Window    title=Selenium
    Click Element    xpath://*[@id="main_navbar"]/ul/li[7]/a
    Sleep    3
    Close All Browsers