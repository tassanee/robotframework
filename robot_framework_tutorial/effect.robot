*** Settings ***
Library    Selenium2Library
Library    BuiltIn

*** Test Cases ***
1.Open Website
    Open Browser    http://tympanus.net/Development/PageLoadingEffects/    gc
    Set Selenium speed  0.3
    Maximize browser Window
    Click Element  //a[@class="pageload-link"][text()="Show Page Loader"]
    Wait Until Page Contains Element    //div[@class="pageload-overlay"]
    Click Element    //a[@class="pageload-link"][text()="Go back"]
    Click Element  //a[@class="pageload-link"][text()="Show Page Loader"]
    Wait Until Page Contains Element    //div[@class="pageload-overlay"]
    Click Element    //a[@class="pageload-link"][text()="Go back"]