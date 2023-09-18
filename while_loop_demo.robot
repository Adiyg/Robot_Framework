*** Settings ***


*** Test Cases ***
While Loop
    [Tags]    whileloopdemo
    ${x}=    Set Variable    ${0}
    WHILE    ${x} < 3
        Log To Console    ${x}
        ${x}=    Evaluate    ${x} + 1
    END

    # The while loop has a default limit of 10000 iterations to avoid accidental infinite loops.