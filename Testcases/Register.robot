*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com
${Company}  id:Company
${FirstName}    id:FirstName
${LastName}     id:LastName
${Email}    id:Email
${Password}     id:Password
${Passwordvalue}    Motionpassword@1
${ConfirmPassword}     id:ConfirmPassword
*** Test Cases ***


Registre
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    Enter Register Details
    #click element   xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
    #sleep   10
    #clear element text   ${"email_txt"}
    sleep   10
    close browser
*** Keywords ***
Enter Register Details
    click link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
    element should be enabled     ${FirstName}
    element should be enabled     ${LastName}
    element should be enabled     ${Email}
    Select Radio Button    Gender   F
    Input text  ${FirstName}    Navjot
    sleep   2
    Input text   ${LastName}    Kaur
    Select From List By Label    DateOfBirthDay  24
    Select From List By Index    DateOfBirthMonth   9
    Select From List By Label    DateOfBirthYear    1990
    Sleep    2
    Input Text   ${Email}   navjotkaurhailer@gmail.com
    Input Text    ${Company}    Napa
    Unselect Checkbox    id:Newsletter
    Sleep    2
    Input Password    ${Password}   ${Passwordvalue}
    Input Text    ${ConfirmPassword}    ${Passwordvalue}
