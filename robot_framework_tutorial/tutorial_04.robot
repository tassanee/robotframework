*** Settings ***
Library    String

*** Test Cases ***
For-Loop-In-Range
		FOR   ${INDEX}    IN RANGE   1   3
		\  Log To Console    \n${INDEX}
		\  ${RANDOM_STRING}=    Generate Random String    ${INDEX}
        \  Log To Console    ${RANDOM_STRING}
For-Loop-Elements
		@{ITEMS}    Create List    Star Trek    Star Wars    Pottor Rodom
		FOR    ${ELEMENT}    IN    @{ITEMS}
		\    Log To Console    \n${ITEMS}
		\    ${ELEMENT}    Replace String    ${ELEMENT}    ${SPACE}    ${EMPTY}
		\    Log To Console    ${ELEMENT}
For-Loop-Exiting
		@{ITEMS}    Create List    Good Element 1    Break On Me    Good Element 2
		FOR    ${ELEMENT}    IN    @{ITEMS}
		\    Log To Console    \n${ELEMENT}
		\    Run Keyword If    '${ELEMENT}' == 'Break On Me'    Exit For Loop
		\    Log To Console    Do more actions here ….
