*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library
Library  OperatingSystem

*** Variables ***
# Copy/paste the line bellow into the Terminal to run the script
# pybot -d results Tests/Amazon.robot
# robot -d results Tests/Amazon.robot
${BROWSER}  gc
${USER}  sranatunga@context1.com
${PW}  context@2017
${Name1}  tmone
${Name2}  tmtwo
${Name3}  tmthree
#${MODULE1}  TestingModule1,TestingModuleShamil,testingmodule1
${SQL}  SQL\nSQL\nSomething diferent
${SQL_FILE}


*** Test Cases ***

LogIn
    [Documentation]  This is going to delete all the Testin Module
    #[Tags]  Valid
    Open Browser  http://10.0.1.47:8080/urp/urp/  ${BROWSER}
    Sleep  5s
    Click Button  xpath=//*[@id="show_login_btn"]
    Sleep  5s
    Click Element  xpath=//*[@id="login_form"]/div[1]/div/div/input
    Sleep  5s
    Input Text  identifier=login  ${USER}
    Sleep  5s
    Click Button  xpath=//*[@id="login_form"]/div[2]/div/div/input
    Sleep  5s
    Input Text  identifier=password  ${PW}
    Sleep  5s
    Click Button  Login
    Sleep  5s
Deleting a Module 1 Test
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/a
    Sleep  5s
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/ul/li[1]/a
    Sleep  5s
    Click Element  xpath=.//*[@id='module_list_container']/div/div/div[2]/div[2]/div[1]/div/table/tbody/tr[2]/td[4]/div/input
    Sleep  2s
    Input Text  identifier=name  ${Name1}
    Sleep  2s
    Click Element  xpath=.//*[@id='datagrid-row-r2-2-0']/td[4]/div
    Sleep  2s
    Click Element  xpath=.//*[@id='edit_module_btn']
    Sleep  5s
    Click Element  xpath=.//*[@id='versions-table']/tbody/tr/td[1]/button
    Sleep  5s
Deleting a Module 2 Test
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/a
    Sleep  5s
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/ul/li[1]/a
    Sleep  5s
    Click Element  xpath=.//*[@id='module_list_container']/div/div/div[2]/div[2]/div[1]/div/table/tbody/tr[2]/td[4]/div/input
    Sleep  2s
    Input Text  identifier=name  ${Name2}
    Sleep  2s
    Click Element  xpath=.//*[@id='datagrid-row-r2-2-0']/td[4]/div
    Sleep  2s
    Click Element  xpath=.//*[@id='edit_module_btn']
    Sleep  5s
    Click Element  xpath=.//*[@id='versions-table']/tbody/tr/td[1]/button
    Sleep  5s
Deleting a Module 3 Test
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/a
    Sleep  5s
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/ul/li[1]/a
    Sleep  5s
    Click Element  xpath=.//*[@id='module_list_container']/div/div/div[2]/div[2]/div[1]/div/table/tbody/tr[2]/td[4]/div/input
    Sleep  2s
    Input Text  identifier=name  ${Name3}
    Sleep  2s
    Click Element  xpath=.//*[@id='datagrid-row-r2-2-0']/td[4]/div
    Sleep  2s
    Click Element  xpath=.//*[@id='edit_module_btn']
    Sleep  5s
    Click Element  xpath=.//*[@id='versions-table']/tbody/tr/td[1]/button
    Sleep  5s

LogOff
    Click Button  xpath=//*[@id="logout_form"]/button
    Sleep  5s
    Close Browser