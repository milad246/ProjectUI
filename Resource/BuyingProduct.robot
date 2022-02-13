***Settings***
Documentation  A Test suit buying product on the digikala
Library  SeleniumLibrary
Resource  Variables.robot

***Variables***
${seller}  //*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[10]/div/div[2]/div/div
${finding_seller}  //div[@id='plpLayoutContainer']/section[2]/div/div/div/div[8]/div/div[2]/div/div/div
${seller_select}  css:.overflow-y-auto-lg > .w-full:nth-child(2) .d-inline-flex
${finding_brand}  //div[@id='plpLayoutContainer']/section[2]/div/div/div/div[2]/div/div[2]/div/div 
${brand_select}  //div[@id='plpLayoutContainer']/section[2]/div/div/div/div[2]/div[2]/div[3]/div/div/label/span 
${text_product}  //*[contains(text(), "گوشی موبایل اپل مدل iPhone 13 Pro Max A2644 دو سیم‌ کارت ظرفیت 128 گیگابایت و رم 6 گیگابایت - اکتیو")]
${verify_target-element}  //div[@id='__next']/div/div[3]/div[3]/div[2]/div[2]/div[2]/div/div/h1
${verify_text_product}  iPhone 13 Pro Max A2644
${buy_btn}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div/div[2]/div[3]/button[1]
${cart_btn}  xpath=//div[@id='__next']/div/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[8]/div/div[2]/div[3]/div[2]/div/a/p 
${check_cart}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div/ul[1]/li[1]/div[1]/span[2]
${continue_btn}  css:.text-button-1:nth-child(1) > .relative
${send_time_btn}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/aside/div/div/div[1]/div[4]/button/div[2]


***Keywords***
Select Seller
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Run Keyword And Ignore Error  Scroll Element Into View  ${seller} 
    Click Element  ${finding_seller}   
    Click Element  ${seller_select} 
    Run Keyword And Ignore Error  Checkbox Should Be Selected  ${seller_select} 
# Select Brand
#     Run Keyword And Ignore Error  Checkbox Should Be Selected  ${seller_select}
#     Click Element  ${finding_brand}   
#     Click Element  ${brand_select} 
#     Run Keyword And Ignore Error  Checkbox Should Be Selected  ${brand_select} 
   
Product Selection
    Run Keyword And Ignore Error  Scroll Element Into View  ${text_product}
    Run Keyword And Ignore Error  Mouse Down  ${text_product}
    Run Keyword And Ignore Error  Mouse Up  ${text_product}

Add to cart  
    Switch Window  NEW
    Wait Until Element Contains  ${verify_target-element}  ${verify_text_product}
    Wait Until Element Is Visible  ${buy_btn}
    Run Keyword And Ignore Error  Mouse Down  ${buy_btn}
    Click Button  ${buy_btn} 
    Wait Until Element Is Visible  ${cart_btn} 
    Click Element  ${cart_btn}

Checkout Cart
     Wait Until Element Contains  ${check_cart}  ۱
     Click Element  ${continue_btn}
     Wait Until Element Is Enabled  ${send_time_btn}  
     Sleep  5s

Buying Products
    Select Seller
    # Select Brand
    Product Selection
    Add to cart
    Checkout Cart