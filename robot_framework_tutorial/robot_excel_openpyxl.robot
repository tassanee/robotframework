*** Settings ***
Library    String
Library    openpyxl
Library    BuiltIn

*** Variables ***
${excel}    excel_openpyxl.xlsx
${data}     เทสนะจ๊ะ

*** Test Cases ***
Test Load Data Excel
	${wb}    Load Workbook    ${CURDIR}/${excel}
	#${ws}    Set Variable    ${wb.get_active_sheet()}
	${ws}    Set Variable    ${wb.get_sheet_by_name('Sheet2')}
	${cell}    Set Variable    ${ws.cell(2,2).value}
	${body}    Fetch From Right    ${cell}    {}
	Log To Console    \n\n${body}\n
Test Write Excel
    ${wb}    Load Workbook    ${CURDIR}/${excel}
    Log To Console    ${wb}
    ${ws}    Set Variable    ${wb['Sheet1']}
    Log To Console    ${ws}
    Evaluate    $ws.cell(3,3,'${data}')
    Evaluate    $wb.save('${excel}')