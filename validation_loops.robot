*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    RequestsLibrary


*** Variables ***
${url}=             http://127.0.0.1:5000/books
${expected_text}=   Geeta


*** Test Cases ***
Validate URL Content
    Create Session    ifelse     ${url}
    ${source}=          GET On Session    ifelse   ${url}
    ${contains}=        Should Contain    ${source.text}     ${expected_text}
    Run Keyword If    ${contains}    Log    The URL contains the expected text.
    ...    ELSE    Log    The URL does not contain the expected text.