*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
testframes

    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index.html?deprecated-list.html   chrome
    Select Frame    packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame
    Sleep    3

    Select Frame    packageFrame
    Click Link    WebDriver
    Unselect Frame
    Sleep    3

    Select Frame    classFrame
    click link  Help
    Unselect Frame
    Sleep    2
    Close Browser
