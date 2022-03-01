*** Settings ***
Library  SeleniumLibrary
Resource  Variables.robot

*** Variables ***
${Popup_Categories}  //nav/descendant::span[text()='دسته‌بندی کالاها']
${Select_Book_Magazin}  //*[@data-cro-id="header-main-menu-categories"]//p[text()="کتاب، لوازم تحریر و هنر"]
${Select_Magazin_Map}  //*[@data-cro-id="hp-categories-icons"]//img[@alt="مجلات، نقشه و نشانگر کتاب" and contains(@class,"w-100")]
${Magazine}  //div[@class='categoryCard_categoryCard__image__H_Wns']//img[@alt='مجلات' and contains(@class,'w-100')]	

*** Keywords ***
Open Page
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Select Products Category
    Wait Until Element Is Enabled  ${Popup_Categories} 
    Set Focus To Element  ${Popup_Categories} 
    Mouse Over  ${Popup_Categories}

Select Books and Magazines
    Wait Until Element Is Visible  ${Select_Book_Magazin}
    Mouse Down  ${Select_Book_Magazin}
    Mouse Up  ${Select_Book_Magazin}

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
    Select Products Category
    Select Books and Magazines
    Select Categories Book Magazing

  