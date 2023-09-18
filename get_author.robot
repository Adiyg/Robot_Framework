*** Settings ***
Library   RequestsLibrary
Library   SeleniumLibrary
Library   Collections

*** Variables ***
${base_url}        http://127.0.0.1:5000/

*** Test Cases ***
Get access
    Create Session    fetch_data    ${base_url}
    ${result}    Get On Session    fetch_data    books
    Log To Console    ${result.status_code}
    Log To Console    ${result.content}