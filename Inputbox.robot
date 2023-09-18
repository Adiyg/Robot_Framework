*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath://a[@class='ico-login']
    ${"email_text"}    Set Variable    id:Email