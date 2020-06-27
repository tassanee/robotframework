*** Settings ***
Documentation    Suite description
Library  BuiltIn

*** Variables ***
${scalar}   hello
@{List1}    Robot  Framework
&{dict}     Robot=value1     Framework=value2


*** Test Cases ***
TestData
    Log To Console  \n${scalar}
    Log To Console  \n${list1}[1]
    Log To Console  \n&{dict}[Robot]
    ${Test}  Create List   Test  2020
    Log To Console  \n${Test}[0]
    ${Dict2}  Create Dictionary  key1=test1   key2=test2   key3=test3
    Log To Console  \n${Dict2}[key3]
    #Variables Number
    ${ints}  Create List  ${1}  ${2}  ${3}
    Log To Console  \n${ints}[0]