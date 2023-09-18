*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    post_payload.py
Library    post_request.py


*** Variables ***
${url}=    http://127.0.0.1:5000/books


*** Test Cases ***
Test case with payload
    ${payload}=    Evaluate    {"title": "Ramayan", "author": "Rama"}
    ${response}=    post_data    ${url}    json=${payload}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
