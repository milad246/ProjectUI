*** Settings ***
Documentation  A Test suit select product apple on the categories
Library  SeleniumLibrary
Resource  Variables.robot

*** Variables ***
${Popup_Categories}  //nav/descendant::span[text()='دسته‌بندی کالاها']
${Select_Apple_Text}  //span[string-length(text()) >= 3 and text()='اپل']
${Best_Seller}  //div[@data-cro-id='plp-sort-option' and text()='پرفروش‌ترین‌']

*** Keywords ***
Mose Move Category
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Wait Until Element Is Enabled  ${Popup_Categories} 
    Mouse Over  ${Popup_Categories}

Select Apple Product
    Wait Until Element Is Visible  ${Select_Apple_Text}
    Mouse Over  ${Select_Apple_Text}
    Click Element  ${Select_Apple_Text}
   
Select BestSeller Product  
    Wait Until Element Is Visible  ${Best_Seller}
    Mouse Over  ${Best_Seller}
    Click Element  ${Best_Seller}
    Wait Until Element Is Enabled  ${Best_Seller}

Categories And Select Apple Prodocts
    Mose Move Category
    Select Apple Product
    Select BestSeller Product  


