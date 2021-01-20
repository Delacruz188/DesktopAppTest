*** Settings ***
Library    BuiltIn

*** Test Cases ***
jajaja
    FOR    ${index}    IN RANGE    42
        log    ${index}
    END