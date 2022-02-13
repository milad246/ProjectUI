***Settings***
Documentation  A Test suit to connect to the system
Library  SeleniumLibrary
Resource  Variables.robot

***Variables***
${Login_button}  //div[@id='base_layout_desktop_fixed_header']/header/div/div/div/div[2]/a/div[2]
${Input_username}  name:username
${username}  milad.hajizadehh@gmail.com
${username_btn}  css:.relative:nth-child(2)
${Input_password}  //*[@id="__next"]/main/div[2]/form/label/div/div[1]/input
${password}  Milad123456789
${password_btn}  css:.text-button-1 > .relative
${chek_login_button}  css:.BaseLayoutMiniProfile_BaseLayoutMiniProfile__profileButton__TwPY7 > .d-flex:nth-child(2) > svg 
${login_name}  Milad Hajizadeh

**Keywords***
Open Page
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Element  ${Login_button}

Username Page
    Wait Until Element Is Enabled  ${username_btn}   
    Mouse Down  ${Input_username}
    Input Text  ${Input_username}  ${username}
    Click Element  ${username_btn} 
Password Page
    Wait Until Element Is Enabled  ${password_btn} 
    Mouse Down  ${Input_password}
    Input Text  ${Input_password}  ${password} 
    Click Element  ${password_btn}

Check Login
    Wait Until Element Is Enabled  ${chek_login_button}
    Click Element  ${chek_login_button}
    Wait Until Page Contains  ${login_name} 

Valid Login
    Open Page
    Username Page
    Password Page
    Check Login

