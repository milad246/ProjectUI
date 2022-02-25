*** Settings ***
Library  SeleniumLibrary
Resource  Variables.robot

*** Variables ***
${Cart_Page}  //*[(@class='pos-relative d-inline-flex py-2 pr-2 pl-0 p-2-lg bg-000 radius' or @href="/checkout/cart/") and @data-cro-id="header-cart"]
${Cart}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div/ul[1]/li[1]/div[1]/span[2]
${Delet_Product_Cart}  css:.bg-000 > .cartItem_CartItem__grid__Kr1In button:nth-child(3) svg
${Unavailable}  //p[text()='سبد خرید شما خالی است!']

*** Keywords ***
Delete Cart
    Go To  ${URL}
    Maximize Browser Window
    Wait Until Element Is Visible  ${Cart_Page}
    Set Focus To Element  ${Cart_Page}
    Click Element  ${Cart_Page}  
    # Mouse Down  ${Cart_Page}
    # Mouse Up  ${Cart_Page}
    Wait Until Element Is Visible  ${Delet_Product_Cart}
    Set Focus To Element  ${Delet_Product_Cart}
    Mouse Down  ${Delet_Product_Cart}
    Mouse Up  ${Delet_Product_Cart}
    Wait Until Element Is Enabled  ${Unavailable}
  
 