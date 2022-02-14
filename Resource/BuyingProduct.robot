***Settings***
Documentation  A Test suit buying product on the digikala
Library  SeleniumLibrary
Resource  Variables.robot

***Variables***
${Seller}  //*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[10]/div/div[2]/div/div
${Finding_Seller}  //div[@id='plpLayoutContainer']/section[2]/div/div/div/div[8]/div/div[2]/div/div/div
${Seller_Select}  css:.overflow-y-auto-lg > .w-full:nth-child(2) .d-inline-flex
${Finding_Brand}  //div[@id='plpLayoutContainer']/section[2]/div/div/div/div[2]/div/div[2]/div/div 
${Brand_Select}  //div[@id='plpLayoutContainer']/section[2]/div/div/div/div[2]/div[2]/div[3]/div/div/label/span 
${Text_Product}  //img[@alt="گوشی موبایل اپل مدل iPhone 13 Pro Max A2644 دو سیم‌ کارت ظرفیت 256 گیگابایت و رم 6 گیگابایت - اکتیو"]
${Verify_Target-Element}  //div[@id='__next']/div/div[3]/div[3]/div[2]/div[2]/div[2]/div/div/h1
${Verify_Text_Product}  iPhone 13 Pro Max A2644
${Buy_Btn}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div/div[2]/div[3]/button[1]
${Cart_Btn}  //div[@id='__next']/div/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[8]/div/div[2]/div[3]/div[2]/div/a/p 
${Check_Cart}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div/ul[1]/li[1]/div[1]/span[2]
${Continue_Btn}  css:.text-button-1:nth-child(1) > .relative
${Send_Time_Btn}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/aside/div/div/div[1]/div[4]/button/div[2]

***Keywords***
Select Seller
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Seller} 
    Click Element  ${Finding_Seller}   
    Click Element  ${Seller_Select} 
    Run Keyword And Ignore Error  Checkbox Should Be Selected  ${Seller_Select} 
# Select Brand
#     Run Keyword And Ignore Error  Checkbox Should Be Selected  ${Seller_Select}
#     Click Element  ${Finding_Brand}   
#     Click Element  ${Brand_Select} 
#     Run Keyword And Ignore Error  Checkbox Should Be Selected  ${Brand_Select} 
   
Product Selection
    Run Keyword And Ignore Error  Scroll Element Into View  ${Text_Product}
    Run Keyword And Ignore Error  Mouse Down  ${Text_Product}
    Click Element  ${Text_Product}

Add to cart  
    Switch Window  NEW
    Wait Until Element Contains  ${Verify_Target-Element}  ${Verify_Text_Product}
    Wait Until Element Is Visible  ${Buy_Btn}
    Run Keyword And Ignore Error  Mouse Down  ${Buy_Btn}
    Click Button  ${Buy_Btn} 
    Wait Until Element Is Visible  ${Cart_Btn} 
    Click Element  ${Cart_Btn}

Checkout Cart
     Wait Until Element Contains  ${Check_Cart}  ۱
     Click Element  ${Continue_Btn}
     Wait Until Element Is Enabled  ${Send_Time_Btn}  

Buying Products
    Select Seller
    # Select Brand
    Product Selection
    Add to cart
    Checkout Cart