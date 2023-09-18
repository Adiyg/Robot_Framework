*** Settings ***
Library   RequestsLibrary
Library   SeleniumLibrary
Library   Collections

*** Variables ***
${base_url}        http://127.0.0.1:5000/

*** Test Cases ***
Get access
    [Tags]    getsession    apisession
    Create Session    fetch_data    ${base_url}
    ${result}    Get On Session    fetch_data    books
    Log To Console    ${result.status_code}
    Log To Console    ${result.content}

Post data
    [Tags]    postsession    apisession
    Create Session    AddData    ${base_url}
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${data}=    Create Dictionary    title=New Book    author=New Author
    ${response}=    Post On Session    AddData    /books    json=${data}    headers=${headers}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

Update data
    [Tags]    putsession    apisession
    Create Session    UpdateData    ${base_url}
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${body}=    Create Dictionary    id=8    title=Happiness    author=New Author
    ${response}=    Put On Session    UpdateData    /books/8    json=${body}    headers=${headers}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}