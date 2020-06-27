*** Settings ***
Library    DateTime
Library    Selenium2Library
Library    BuiltIn

*** Test Cases ***
Get Date and Time
    ${time}    Get Time
    Log To Console    \n${time}
    ${date_time}    Get Current Date
    Log To Console    \n${date_time}
    ${date_time}    Convert Date    ${date_time}    result_format=%d-%m-%y %H-%M-%S
    Log To Console    \n${date_time}\n
    Set Global Variable    ${date_time}

Capture JPG
    Open Browser    https://robotframework.org/    gc
    Maximize Browser Window
    Set Selenium Speed    0.2
    Capture Page Screenshot    ${CURDIR}/Capture-${date_time}.png
    Capture Page Screenshot    %{userprofile}/Capture-${date_time}.png
    Log To Console    Capture-${date_time}
