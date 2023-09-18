*** Test Cases ***    #header
List the element     # test case name
    ${my_list}=    Create List    Apple    Banana    Orange
    Should Not Contain    ${my_list}    Xyz
    Should Contain    ${my_list}    Apple

