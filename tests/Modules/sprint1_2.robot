*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library
Library  OperatingSystem

*** Variables ***
${BROWSER}  gc
${USER}  sranatunga@context1.com
${PW}  context@2017
${Title}




*** Test Cases ***

LogIn
    [Documentation]  This is the valid test for LogIn and LogOff with both correct user anad password
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
    click element  identifier=title  ${Title}
    Sleep  5s
    click element  get text=

