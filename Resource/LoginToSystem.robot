*** Settings ***
Documentation  A Test keyword to connect to the system
Library  SeleniumLibrary
Resource  Variables.robot

*** Variables ***
${Login_button}  //*[@data-cro-id="header-profile"]//div[text()="ورود | ثبت‌نام"]
${Input_username}  //input[@name="username"]
${username}  milad.hajizadehh@gmail.com
${Username_btn}  //button[@data-cro-id="login-register"]//div[text()= 'ورود']
${Input_password}  //input[@name="password"]
${password}  Milad123456789
${password_btn}  //button[@type="submit"]//div[text()="تایید"]
# ${chek_login_button}  css:.BaseLayoutMiniProfile_BaseLayoutMiniProfile__profileButton__TwPY7 > .d-flex:nth-child(2) > svg
${Check_Login_Button}  //div[@id='base_layout_desktop_fixed_header']//div[contains(@class,'BaseLayoutMiniProfile_BaseLayoutMiniProfile__profileButton__TwPY7 pos-relative')]  
${login_name}  Milad Hajizadeh

*** Keywords ***
Open Page
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    wait until element is visible  ${Login_button}
    Set Focus To Element  ${Login_button}
    Click Element  ${Login_button}

Username Page
    wait until element is visible  ${Username_btn}   
    Mouse Down  ${Username_btn}
    Set Focus To Element  ${Input_username}
    Input Text  ${Input_username}  ${username}
    Click Element  ${Username_btn}

Password Page
    wait until element is visible  ${password_btn} 
    Mouse Down  ${Input_password}
    Set Focus To Element  ${Input_password}
    Input Text  ${Input_password}  ${password} 
    Click Element  ${password_btn}

Check Login
    wait until element is visible  ${Check_Login_Button}
    Click Element  ${Check_Login_Button}
    Wait Until Page Contains  ${login_name} 

Valid Login
    Open Page
    Username Page
    Password Page
    Check Login

