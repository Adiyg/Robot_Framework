*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    get_request.py
Library    post_request.py
Library    put_request.py
Library    delete_request.py


*** Variables ***
${url}=    http://127.0.0.1:5000/books

*** Test Cases ***
Fetch data using python file
    [Tags]    fetch    func_test
    ${response}=    diya_get    ${url}
    Log To Console    ${response.content}

Post data using python file
    [Tags]    postdata    func_test
    ${response}=    diya_post    ${url}
    Log To Console    ${response.content}

Update data using python file
    [Tags]    updatedata    func_test
    ${response}=    diya_put    ${url}/31
    Log To Console    ${response.content}

Delete data using python file
    [Tags]    deletedata    func_test
    ${response}=    diya_delete    ${url}/7
    Log To Console    ${response.content}