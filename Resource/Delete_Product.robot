***Settings***
Library  SeleniumLibrary
Resource  ../../Resource/Variables.robot

***Variables***
${Cart_Page}  css:#base_layout_desktop_fixed_header > header > div > div > div > div.d-flex.ai-center.jc-end > div.pos-relative.d-flex.flex-column > a > div > svg > use
${Cart}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div/ul[1]/li[1]/div[1]/span[2]
${Delet_Product_Cart}  css:.bg-000 > .cartItem_CartItem__grid__Kr1In button:nth-child(3) svg

***Keywords***
Select Cart
    # Open Browser  ${URL}  ${BROWSER}
    # Maximize Browser Window
    Run Keyword And Ignore Error  Mouse Down  ${Cart_Page}
    Run Keyword And Ignore Error  Mouse Up  ${Cart_Page}
    Wait Until Element Contains  ${Cart}  ۱
    Run Keyword And Ignore Error  Mouse Down  ${Delet_Product_Cart}
    Run Keyword And Ignore Error  Mouse Up  ${Delet_Product_Cart}
    Wait Until Page Contains  سبد خرید شما خالی است!
 