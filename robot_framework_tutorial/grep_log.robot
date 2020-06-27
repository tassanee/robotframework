*** Settings ***
Library    Selenium2Library
Library    OperatingSystem

*** Test Cases ***
Create File Grep Log
    Create File    ${CURDIR}/test2020.txt
    ${response} =    Grep File    ${CURDIR}/LogFile.txt    WIFI01
    Append To File    ${CURDIR}/test2020.txt    ${response}