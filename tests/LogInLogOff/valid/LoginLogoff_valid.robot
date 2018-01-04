*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library

*** Variables ***
# Copy/paste the line bellow into the Terminal to run the script
# pybot -d results Tests/Amazon.robot
# robot -d results Tests/Amazon.robot
${BROWSER}  gc
${USER}  sranatunga@context1.com
#${USER}  tmoleirinho@contextworld.com
${PW}  context@2017

*** Test Cases ***
LogIn and LogOff - Valid Test
    [Documentation]  This is where the login Test is succesfull
    #[Tags]  Smoke
    Open Browser  http://10.0.1.47:8080/urp/urp/  ${BROWSER}
    Sleep  7s
    Click Button  xpath=//*[@id="show_login_btn"]
    Sleep  7s
    click element  xpath=//*[@id="login_form"]/div[1]/div/div/input
    Sleep  7s
    Input Text  identifier=login  ${USER}
    Sleep  7s
    Click Button  xpath=//*[@id="login_form"]/div[2]/div/div/input
    Sleep  3s
    Input Text  identifier=password  ${PW}
    Sleep  3s
    Click Button  Login
    Sleep  3s
    Click Button  xpath=//*[@id="logout_form"]/button
    Sleep  3s
    Close Browser

*** Keywords ***