*** Variables ***
${test}   Success  200

*** Keywords ***
 Hello Name
    [Arguments]      ${data}
    Log To Console  \nHello ${data}
    Log To Console  Hello ${test}