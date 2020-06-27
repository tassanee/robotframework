*** Settings ***
Library    REST
*** Variables ***
${json}    {"id": 11, "name": "Kachen" ,"username":"Learning3Thai" , "company":{"name":"KPN" , "code":2020} }

*** Test Cases ***
POST json body and write to file
    POST    https://jsonplaceholder.typicode.com/users    ${json}
    Integer    response status      201
    Output    response body
    Output    response body    ${OUTPUTDIR}/response.json
    Output schema    response body    ${OUTPUTDIR}/schema_response.json
    Rest instances    ${OUTPUTDIR}/rest.json    sort_keys=true