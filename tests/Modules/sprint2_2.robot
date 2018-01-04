*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library
Library  OperatingSystem

*** Variables ***
${BROWSER}  gc
${USER}  sranatunga@context1.com
${PW}  context@2017





*** Test Cases ***

LogIn
    [Documentation]  This is the valid test for LogIn and LogOff with both correct user anad password
    #[Tags]  Valid
    Open Browser  http://10.0.1.47:8080/urp/urp/  ${BROWSER}
    Sleep  5s
    Click Button  xpath=//*[@id="show_login_btn"]
    Sleep  3s
    Click Element  xpath=.//*[@id='login_form']/div[1]/div/div/div/input
    Sleep  3s
    Input Text  identifier=login  ${USER} 
    Sleep  3s
    Click Button  xpath=.//*[@id='pass-control']
    Sleep  3s
    Input Text  identifier=password  ${PW}
    Sleep  3s
    Click Button  Login
    Sleep  5s
    click element  xpath=//*[@id='enw_menu']/li[6]/a
    Sleep  5s
    click element  xpath=//*[@id='datagrid-row-r2-2-10']/td[3]/div
    Sleep  3s
    click element  xpath=//*[@id='edit_template_btn']
    Sleep  5s
    click element  xpath=//*[@id='datagrid-row-r1-2-0']/td[2]/div
    Sleep  2s

LogOff
    Click Button  xpath=//*[@id="logout_form"]/button
    Sleep  5s
    Close Browser
