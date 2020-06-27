*** Settings ***
Documentation    Suite description
Library  Selenium2Library

*** Variables ***
${expect}  ROBOT FRAME WORK/
${url}  https://www.google.com
${browser}  gc
*** Test Cases ***
 Open google
     Open Browser   ${url}  ${browser}
     MaximizeBrowserWindow
 Search Robotframework
     InputText     name=q  Robot Framework
     Click Button   name=btnK
 Click Robotframework
     ClickElement  //*[@class="LC20lb DKV0Md"]
 Check Result
     ${result}  Get Text  //h1[@class="main-header"]
     Log to console  ${result}
     Should be equal  ${result}  ${expect}