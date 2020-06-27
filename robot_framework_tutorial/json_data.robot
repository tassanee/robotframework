*** Settings ***
Library    Collections

*** Variables ***
${js_string}=    {
	                 "random": {
	                   "passwd_change_date": "2016-12-16T11:26:26",
	                   "passwd_fail_count": 0,
	                   "password": "123456789",
	                   "status": 0,
	                   "user_name": "test@test.com",
	                   "processVariables": {
	                       "processKey": "modelTest",
	                       "Years": "2018"
	                   }
	                 }
	               }
*** Test Cases ***
Test Json data
	    ${data}=    Evaluate    json.loads($js_string)    json
	    Log To Console    \n${data["random"]["processVariables"]}\n
	    Set To Dictionary    ${data["random"]["processVariables"]}    Years=2019
	    ${js_string}=    Evaluate    json.dumps($data)    json
	    Log To Console    \n${js_string}\n 
                                        