*** Settings ***
Library    REST    https://jsonplaceholder.typicode.com

*** Test Cases ***
PUT
    PUT    /users/2    {"isBoolean": true , "isNull": null , "company": {"name": "" , "code": 0.09}}   #{"isBoolean": true , "isNull": null , "company": {"name": "" , "code": 0.09} , "key1" : "ERROR"}
    Boolean    $.isBoolean    true
    Null       $.isNull
    String     $..name     ${EMPTY}
    Number     $..code   0.09
    Missing    $.key1    # fails if property key1 exists
    Output     response body
