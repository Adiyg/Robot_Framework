*** Settings ***
Library    RequestsLibrary
Library    Collections
 
*** Variables ***
${base_url}        http://127.0.0.1:5000/books



*** Test Cases ***
 
Quick Get Request Test
    [Tags]    getsession
    ${response}=    GET      ${base_url}      expected_status=200
    Log To Console  ${response.json()}