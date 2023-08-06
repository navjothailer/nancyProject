Library    SeleniumLibrary
Library    Selenium2Library
*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
MoreBrowsersTest
    Open Browser    https://www.google.com/     chrome
    maximize browser window
    sleep   3
    Open Browser    https://www.bing.com/       chrome

