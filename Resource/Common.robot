*** Settings ***
Library  SeleniumLibrary
Resource  Variables.robot

*** Variables ***
${Select_Book_Magazin}  //p[text()='کتاب، لوازم تحریر و هنر' and //a[@href='/main/book-and-media/']//p[1]
${Valid_Page}  //*[text()="خرید بر اساس دسته‌بندی"]
${Select_Magazin_Map}  //img[@alt="مجلات، نقشه و نشانگر کتاب"]
${Magazine}  //img[@alt= "مجلات"]	

*** Keywords ***
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
    Wait Until Element Is Enabled  ${Select_Magazin_Map}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Select_Magazin_Map}
    Wait Until Element Is Visible  ${Select_Magazin_Map}
    Set Focus To Element  ${Select_Magazin_Map}
    Click Element  ${Select_Magazin_Map}
    Wait Until Element Is Visible  ${Magazine}
    Set Focus To Element  ${Magazine}
    Click Element  ${Magazine}
    
Select PopUp Categories And Book Magazine
    Open Page
    Select Product Category
    Select Books and Magazines
    Select Categories Book Magazing

  