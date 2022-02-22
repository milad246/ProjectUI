***Settings***
Library  SeleniumLibrary
Resource  Variables.robot

***Variables***
${Select_Book_Magazin}  //p[text()= "کتاب، لوازم تحریر و هنر"]
${Valid_Page}  //*[text()="خرید بر اساس دسته‌بندی"]
${Select_Magazin_Map}  //p[text()= "مجلات، نقشه و نشانگر کتاب"] 
${Magazine}  //div[(text()= "مجلات")]	


***Keywords***
Open Page
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Select Product Category
    Wait Until Element Is Enabled  ${POPUP_CATEGORIES} 
    Set Focus To Element  ${POPUP_CATEGORIES} 
    Mouse Over  ${POPUP_CATEGORIES}

Select Books and Magazines
    Wait Until Element Is Enabled  ${Select_Book_Magazin} 
    Set Focus To Element  ${Select_Book_Magazin} 
    Mouse Over  ${Select_Book_Magazin}
    Click Element  ${Select_Book_Magazin}

Select Categories Book Magazing
    Run Keyword And Ignore Error  Scroll Element Into View  ${Select_Magazin_Map}
    Wait Until Element Is Visible  ${Select_Magazin_Map}
    Set Focus To Element  ${Select_Magazin_Map}
    Click Element  ${Select_Magazin_Map}
    Wait Until Element Is Visible  ${Magazine}
    Set Focus To Element  ${Magazine}
    Mouse Over  ${Magazine}   
    Click Element  ${Magazine} 
    
Select PopUp Categories And Book Magazine
    Open Page
    Select Product Category
    Select Books and Magazines
    Select Categories Book Magazing

  