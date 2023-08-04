*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
tabbedwindowtest
    Open Browser    https://demo.automationtesting.in/Windows.html  chrome
    Click Element    xpath://*[@id="Tabbed"]/a/button
    Select Window   title=Selenium
