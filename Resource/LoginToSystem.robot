***Settings***
Documentation  A Test suit to connect to the system
Library  SeleniumLibrary
Resource  Variables.robot

***Variables***
${Login_button}  //*[contains(text(), 'ورود | ثبت‌نام')]
${Input_username}  //*[@id="__next"]/main/div[2]/form/label/div/div/input
${username}  milad.hajizadehh@gmail.com
${username_btn}  //div[contains(text(), 'ورود')]
${Input_password}  //*[@id="__next"]/main/div[2]/form/label/div/div[1]/input
${password}  Milad123456789
${password_btn}  //div[contains(text(), 'تایید')]
${chek_login_button}  css:.BaseLayoutMiniProfile_BaseLayoutMiniProfile__profileButton__TwPY7 > .d-flex:nth-child(2) > svg 
${login_name}  Milad Hajizadeh

**Keywords***
Open Page
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    wait until element is visible  ${Login_button}
    Set Focus To Element  ${Login_button}
    Click Element  ${Login_button}

Username Page
    wait until element is visible  ${username_btn}   
    Mouse Down  ${Input_username}
    Set Focus To Element  ${Input_password}
    Input Text  ${Input_username}  ${username}
    Click Element  ${username_btn}

Password Page
    wait until element is visible  ${password_btn} 
    Mouse Down  ${Input_password}
    Set Focus To Element  ${Input_password}
    Input Text  ${Input_password}  ${password} 
    Click Element  ${password_btn}

Check Login
    wait until element is visible  ${chek_login_button}
    Click Element  ${chek_login_button}
    Wait Until Page Contains  ${login_name} 

Valid Login
    Open Page
    Username Page
    Password Page
    Check Login

