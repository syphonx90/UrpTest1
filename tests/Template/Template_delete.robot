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
${Name1}  TestingTemplatesham



*** Test Cases ***


LogIn
    [Documentation]  This is the valid test for LogIn and LogOff with both correct user anad password
    #[Tags]  Valid
    Open Browser  http://10.0.1.47:8080/urp/urp/  ${BROWSER}
    Sleep  5s
    Click Button  xpath=//*[@id="show_login_btn"]
    Sleep  3s
    Click Element  xpath=//*[@id='login_form']/div[1]/div/div/div/input
    Sleep  3s
    Input Text  identifier=login  ${USER}
    Sleep  3s
    Click Button  xpath=.//*[@id='pass-control']
    Sleep  3s
    Input Text  identifier=password  ${PW}
    Sleep  3s
    Click Button  Login
    Sleep  5s
Delete Template
    Click Element  xpath=//*[@id="enw_menu"]/li[6]/a
    Sleep  5s
    Click Element  xpath=.//*[@id='main_content_pane']/div[1]/div/div[2]/div[2]/div[1]/div/table/tbody/tr[2]/td[4]/div/input
    Sleep  2s
    Input Text  identifier=name  ${Name1}
    Sleep  4s
    Click Element  xpath=.//*[@id='datagrid-row-r2-2-0']/td[4]/div
    Sleep  4s
    Click Element  xpath=.//*[@id='edit_template_btn']
    Sleep  4s
    Click Element  xpath=.//*[@id='versions-table']/tbody/tr/td[1]/button
    Sleep  4s
    Click Element  xpath=.//*[@id='delete_confirmation_confirm_btn']
    Sleep  4s
    Click Button  xpath=//*[@id='logout_form']/button
    Sleep  4s
    Close Browser