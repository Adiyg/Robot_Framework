*** Settings ***

*** Test Cases ***
IF condition with true result
    [Tags]    if_condt
    IF    1 == 1
        Log To Console    1 is equal to 1
    END

IF condition with false result
    IF    1 == 3
        Log To Console    1 is equal to 3
    END

IF and ELSE IF
    [Tags]    if_elseif
    IF    1 == 3
        Log To Console    1 is equal to 3
    ELSE IF    3 == 3
        Log To Console    3 is equal to 3
        
    END