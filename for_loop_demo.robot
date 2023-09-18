
*** Settings ***
Library    Collections

*** Variables ***

*** Test Cases ***
Validate dictionary values
    ${my_dict}=    Create Dictionary    "name"="diya"    "city"="kanpur"    "company"="CG"
    FOR    ${value}    IN    "name"    "city"    "company"
        ${expected_value}=    Get From Dictionary    ${my_dict}    ${value}
        Log To Console    ${value}
        ${actual_value}=    Run Keyword If    '${value}' in ${my_dict}    Get From Dictionary    ${my_dict}    ${value}
        Should Be Equal As Strings    ${expected_value}    ${actual_value}
        
    END