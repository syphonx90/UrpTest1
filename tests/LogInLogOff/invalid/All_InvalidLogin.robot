*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library

*** Variables ***
# Copy/paste the line bellow into the Terminal to run the script
# pybot -d results Tests/Amazon.robot
# robot -d results Tests/Amazon.robot
${BROWSER}  gc
${USER}  sranatunga@context1.com
${PW}  context@2017
${WRONG_USER}  sranat@con.com
${WRONG_PW}  Context@2017
${ESTRING}

*** Test Cases ***
LogIn and LogOff - invalid Test 1 - wrong password
    [Documentation]  This invalid Test Ckecks if we got the error message using both Wrong User
    #[Tags]  Smoke
    Open Browser  http://10.0.1.47:8080/urp/urp/  ${BROWSER}
    Sleep  5s
    Click Button  xpath=//*[@id="show_login_btn"]
    Sleep  5s
    click element  xpath=//*[@id="login_form"]/div[1]/div/div/input
    Sleep  5s
    Input Text  identifier=login  ${USER}
    Sleep  5s
    Click Button  xpath=//*[@id="login_form"]/div[2]/div/div/input
    Sleep  5s
    Input Text  identifier=password  ${WRONG_PW}
    Sleep  5s
    Click Button  Login
    Sleep  5s
    ${ESTRING}  Get Text  xpath=//*[@id="login_form"]/div[3]/div/p
    Sleep  5s
    Should Be Equal  ${ESTRING}  Wrong username/password combination
    Sleep  5s
    Close Browser


LogIn and LogOff - invalid Test 2 - wrong user
    [Documentation]  This invalid Test Ckecks if we got the error message using Wrong User
    #[Tags]  Smoke
    Open Browser  http://10.0.1.47:8080/urp/urp/  ${BROWSER}
    Sleep  5s
    Click Button  xpath=//*[@id="show_login_btn"]
    Sleep  5s
    click element  xpath=//*[@id="login_form"]/div[1]/div/div/input
    Sleep  5s
    Input Text  identifier=login  ${WRONG_USER}
    Sleep  5s
    Click Button  xpath=//*[@id="login_form"]/div[2]/div/div/input
    Sleep  5s
    Input Text  identifier=password  ${PW}
    Sleep  5s
    Click Button  Login
    Sleep  5s
    ${ESTRING}  Get Text  xpath=//*[@id="login_form"]/div[3]/div/p
    Sleep  5s
    Should Be Equal  ${ESTRING}  Wrong username/password combination
    Sleep  5s
    Close Browser

LogIn and LogOff - invalid Test 3 - both Wrong User and Wrong Password
    [Documentation]  This invalid Test Ckecks if we got the error message using both Wrong User and Wrong Password
    #[Tags]  Smoke
    Open Browser  http://10.0.1.47:8080/urp/urp/  ${BROWSER}
    Sleep  5s
    Click Button  xpath=//*[@id="show_login_btn"]
    Sleep  5s
    click element  xpath=//*[@id="login_form"]/div[1]/div/div/input
    Sleep  5s
    Input Text  identifier=login  ${WRONG_USER}
    Sleep  5s
    Click Button  xpath=//*[@id="login_form"]/div[2]/div/div/input
    Sleep  5s
    Input Text  identifier=password  ${WRONG_PW}
    Sleep  5s
    Click Button  Login
    Sleep  5s
    ${ESTRING}  Get Text  xpath=//*[@id="login_form"]/div[3]/div/p
    Sleep  5s
    Should Be Equal  ${ESTRING}  Wrong username/password combination
    Sleep  5s
    Close Browser

*** Keywords ***