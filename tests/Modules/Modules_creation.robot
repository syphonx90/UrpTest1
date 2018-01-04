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
${MODULE1}  tmone
${MODULE2}  tmtwo
${MODULE3}  tmthree
#${WRONG_MODULE_NAMES}  TestingModule1,TestingModuleShamil,testingmodule1
${DESCRIPTION1}  Module 1 for Automated Testing
${DESCRIPTION2}  Module 2 for Automated Testing
${DESCRIPTION3}  Module 3 for Automated Testing
${SQL}  SQL\nSQL\nSomething diferent
${SQL_FILE}


*** Test Cases ***
Read SQL from File
    [Tags]  SQL from File
    #${SQL_FILE}=  Get File  Resources\\01.txt
    Log  File Content: ${SQL_FILE}

LogIn
    [Documentation]  This is going to create all the Testin Module
    #[Tags]  Valid
    Open Browser  http://10.0.1.47:8080/urp/urp/  ${BROWSER}
    Sleep  5s
    Click Button  xpath=//*[@id="show_login_btn"]
    Sleep  5s
    Click Element  xpath=.//*[@id='login_form']/div[1]/div/div/div/input
    Sleep  5s
    Input Text  identifier=login  ${USER}
    Sleep  5s
    Click Button  xpath=.//*[@id='pass-control']
    Sleep  5s
    Input Text  identifier=password  ${PW}
    Sleep  5s
    Click Button  Login
    Sleep  5s

Create Module1 Test
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/a
    Sleep  5s
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/ul/li[1]/a
    Sleep  5s
    Click Element  xpath=//*[@id="new-module-btn"]
    Sleep  5s
    Input Text  identifier=module_name  ${MODULE1}
    Sleep  5s
    Click Element  xpath=//*[@id="folder_id"]
    Sleep  5s
    Click Element  xpath=.//*[@id='folder_id']/option[11]
    Sleep  5s
    Input Text  identifier=description  ${DESCRIPTION1}
    Sleep  5s
    Click Element  xpath=.//*[@id='code']
    Sleep  5s
    ${read_FILE}=  Get File  resources\\01.txt
    sleep  5s
    Input Text  xpath=.//*[@id='code']    ${read_FILE}
    sleep  5s
    Click Element  xpath=//*[@id="save_module_details_btn"]
    Sleep  5s

Create Module2 Test
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/a
    Sleep  5s
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/ul/li[1]/a
    Sleep  5s
    Click Element  xpath=//*[@id="new-module-btn"]
    Sleep  5s
    Input Text  identifier=module_name  ${MODULE2}
    Sleep  5s
    Click Element  xpath=//*[@id="folder_id"]
    Sleep  5s
    Click Element  xpath=.//*[@id='folder_id']/option[11]
    Sleep  5s
    Input Text  identifier=description  ${DESCRIPTION2}
    Sleep  5s
    Click Element  xpath=.//*[@id='code']
    Sleep  5s
    ${read_FILE}=  Get File  resources\\01.txt
    sleep  5s
    Input Text  xpath=.//*[@id='code']  ${read_FILE}
    sleep  5s
    Click Element  xpath=//*[@id="save_module_details_btn"]
    Sleep  5s

Create Module3 Test
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/a
    Sleep  5s
    Click Element  xpath=//*[@id="enw_menu"]/li[4]/ul/li[1]/a
    Sleep  5s
    Click Element  xpath=//*[@id="new-module-btn"]
    Sleep  5s
    Input Text  identifier=module_name  ${MODULE3}
    Sleep  5s
    Click Element  xpath=//*[@id="folder_id"]
    Sleep  5s
    Click Element  xpath=.//*[@id='folder_id']/option[11]
    Sleep  5s
    Input Text  identifier=description  ${DESCRIPTION3}
    Sleep  5s
    Click Element  xpath=.//*[@id='code']
    Sleep  5s
    ${read_FILE}=  Get File  resources\\01.txt
    sleep  5s
    Input Text  xpath=.//*[@id='code']  ${read_FILE}
    sleep  5s
    Click Element  xpath=//*[@id="save_module_details_btn"]
    Sleep  5s


LogOff
    Click Button  xpath=//*[@id="logout_form"]/button
    Sleep  5s
    Close Browser

*** Keywords ***