***Settings***
Library  SeleniumLibrary
Resource  Variables.robot

***Variables***
${Select_Book_Magazin}  //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/div/div/div[1]/div[8]/a/p
${Select_Magazin_Map}  //div[@id='__next']/div/div[3]/div[3]/div/div[3]/div[2]/span[2]/a/p
${Categories}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[1]/div[2]
${Magazine}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[1]/div[2]/a[1]/div[2]
***Keywords***
Open Page
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Select Product Category
    Wait Until Element Is Enabled  ${POPUP_CATEGORIES} 
    Mouse Over  ${POPUP_CATEGORIES}

Select Books and Magazines
    Mouse Over  ${Select_Book_Magazin}
    Click Element  ${Select_Book_Magazin}
    Wait Until Element Is Visible  ${Select_Magazin_Map}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Select_Magazin_Map} 
    Run Keyword And Ignore Error  Mouse Over  ${Select_Magazin_Map}  
    Click Element  ${Select_Magazin_Map}
    Wait Until Element Is Enabled  ${Categories}
    Click Element  ${Magazine} 
    Wait Until Element Is Enabled  ${Categories}   

Select PopUp Categories And Book Magazine
    Open Page
    Select Product Category
    Select Books and Magazines

  