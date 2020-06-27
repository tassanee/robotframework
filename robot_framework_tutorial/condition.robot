*** Settings ***
Documentation    Suite description
Library  BuiltIn
Library  Selenium2Library

*** Test Cases ***
Run-Keyword-If
	${type}=    Set Variable     CAT
	Run Keyword If    '${TYPE}' == 'DOG'     LOG   Testing Varlant 1
	Run Keyword If    '${TYPE}' == 'CAT'     LOG   Testing Varlant 2
	Run Keyword If    '${TYPE}' == 'DUCK'    LOG   Testing Varlant 3

Run-Keyword-Ignore-Error
	@{item}    Create List    Dog   Cat    Duck
    Run Keyword And Ignore Error   Should Be Empty    ${item}