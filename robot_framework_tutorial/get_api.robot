*** Settings ***
Library    REST

*** Test Cases ***
#GET REQUEST
    #GET    https://jsonplaceholder.typicode.com/users/1
    #Output    response body
    #Output schema    response body
    #Object    response body               # เช็ค response body ใช่ Object หรือไม่
    #Integer    response body id    1    # เช็ค response body ฟิล์ด id ต้องเป็น Integer และมีค่าเป็น 1
    #String    response body name    Leanne Graham    # เช็ค response body ฟิล์ด name ต้องเป็น String และมีค่าเป็น Leanne Graham
GET REQUEST LIMITS
    GET    https://jsonplaceholder.typicode.com/users?_limit=5    timeout=30    headers={"Authentication" : ""}
    Array    response body
    Integer    $[0].id    1
    String    $[0]..lat    -37.3159
    Integer    $..id    maximum=5
    Output    $..id
