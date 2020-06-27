*** Settings ***
Documentation    Suite description
Library  BuiltIn
Library  Selenium2Library

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test