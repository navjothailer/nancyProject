*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com
*** Test Cases ***
nav
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    ${"email_txt"}  set variable    id:Email
    element should be visible     ${"email_txt"}
    element should be enabled     ${"email_txt"}
    Input text   ${"email_txt"}     abc@gmail.com
    sleep   10
    clear element text   ${"email_txt"}
    sleep   10
    close browser



*** Keywords ***
