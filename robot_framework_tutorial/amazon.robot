*** Settings ***
Library    Selenium2Library


*** Keywords ***


*** Test Cases ***
1.Open Website
    Open Browser    https://www.amazon.com/    gc
    Set Selenium Speed    0.3
    Maximize browser Window

2.FOR IN ENUMERATE
    @{ITEMS}    Create List    Prime Video    Music , CDs & Vinl    Digital Music
    FOR    ${INDEX}    ${ELEMENT}    IN ENUMERATE    @{ITEMS}
        Wait Until Page Contains Element    //span[text()="Departments"]
        Mouse Down    //span[text()="Departments"]
        Log To Console    ${ELEMENT}
        Click Element    //span[text()="${ELEMENT}"]
        Page Should Not Contain Element    //body[@class="a-m-us a-aui_152852-t1 a-aui-157141-t"]
    END