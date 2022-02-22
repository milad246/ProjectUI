***Settings***
Documentation  A Test suit select product apple on the categories
Library  SeleniumLibrary
Resource  Variables.robot

****Variables***
${select_apple}  //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/div/div/div[2]/div[1]/div[1]/ul/a[8]
${Bestsellers}  //*[@id="plpLayoutContainer"]/section[1]/div[1]/div/div[2]/div[1] 

***Keywords***
Mose Move Category
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Wait Until Element Is Enabled  ${POPUP_CATEGORIES} 
    Set Focus To Element  ${POPUP_CATEGORIES} 
    Mouse Over  ${POPUP_CATEGORIES}

Select Apple Product
    Wait Until Element Is Visible  ${select_apple}
    Set Focus To Element  ${select_apple}
    Mouse Over  ${select_apple}
    Click Link  ${select_apple}
   
Select BestSellers Product  
    Wait Until Element Is Visible  ${Bestsellers}
    Mouse Over  ${Bestsellers}
    Click Element  ${Bestsellers}
    Wait Until Element Is Enabled  ${Bestsellers}

Categories And Select Apple Prodocts
    Mose Move Category
    Select Apple Product
    Select BestSellers Product  


