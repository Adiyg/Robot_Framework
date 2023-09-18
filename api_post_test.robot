*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String

*** Variables ***
${api_base_url}    http://127.0.0.1:5000/

*** Test Cases ***
Test Create Book
    Create Session    ADDDATA    ${api_base_url}
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${data}=    Create Dictionary    title=New Book    author=New Author
    ${response}=    Post On Session    ADDDATA    /books    json=${data}    headers=${headers}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    ${book}    Set Variable    ${data}
    Should Be Equal As Strings    ${book['title']}    New Book
    Should Be Equal As Strings    ${book['author']}    New Author
