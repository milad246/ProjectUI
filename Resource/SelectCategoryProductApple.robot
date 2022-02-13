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
    Mouse Over  ${POPUP_CATEGORIES}

Select Apple Product
    Mouse Over  ${select_apple}
    Click Link  ${select_apple}
    Wait Until Element Is Enabled  ${Bestsellers}

Select BestSellers Product    
    Mouse Over  ${Bestsellers}
    Click Element  ${Bestsellers}
    Wait Until Page Contains Element  ${Bestsellers}

Categories And Select Apple Prodocts
    Mose Move Category
    Select Apple Product
    Select BestSellers Product  


