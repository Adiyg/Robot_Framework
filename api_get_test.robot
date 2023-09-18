*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Library    OperatingSystem

*** Variables ***
${api_base_url}    http://127.0.0.1:5000/

*** Test Cases ***
Test Get books
    Create Session    GETDATA    ${api_base_url}
    ${response}    Get On Session    GETDATA    /books
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    ${books}    Set Variable    ${response.json()}
    Should Not Be Empty    ${books}
    ${first_book}    Set Variable    ${books[0]}
    Dictionary Should Contain Key   ${first_book}    id
    Dictionary Should Contain Key   ${first_book}    title
    Dictionary Should Contain Key   ${first_book}    author
    Should Be String    ${first_book['title']}
    Should Be String    ${first_book['author']}