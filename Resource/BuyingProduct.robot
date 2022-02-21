***Settings***
Documentation  A Test suit buying product on the digikala
Library  SeleniumLibrary
Resource  Variables.robot

***Variables***
${Type_Seller}  //*[text()="نوع فروشنده"]
${Select_Seller}  //*[text()="دیجی‌کالا"]
${Filter_Brand}  //*[(text()="برند")]
${Filter_Select_Brand}  //*[text()="Apple"]
${Text_Product}  //*[text()= "گوشی موبایل اپل مدل iPhone 13 Pro A2639 دو سیم‌ کارت ظرفیت 512 گیگابایت و 6 گیگابایت رم"]  
${Buy_Btn}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div/div[2]/div[3]/button[1]
${Cart_Btn}  //div[@id='__next']/div/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[8]/div/div[2]/div[3]/div[2]/div/a/p 
${Check_Cart}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div/ul[1]/li[1]/div[1]/span[2]
${Continue_Btn}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div/ul[2]/li/div/div/aside/div/div[1]/div[1]/div[4]/a/div[2]
${Send_Time_Btn}  //div[text()="انتخاب زمان ارسال"]

***Keywords***
Select Seller
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}.
    Wait Until Element Is Enabled  ${Type_Seller}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Type_Seller}
    Click Element  ${Type_Seller}
    Wait Until Element Is Enabled  ${Select_Seller}   
    Run Keyword And Ignore Error  Mouse Down  ${Select_Seller}  
    Click Element  ${Select_Seller} 
    Run Keyword And Ignore Error  Checkbox Should Be Selected  ${Select_Seller}  

Select Brand
    Wait Until Element Is Enabled  ${Filter_Brand} 
    Run Keyword And Ignore Error  Mouse Over  ${Filter_Brand}  
    Click Element  ${Filter_Brand}
    Wait Until Element Is Enabled  ${Filter_Select_Brand} 
    Run Keyword And Ignore Error  Mouse Over  ${Filter_Select_Brand}
    Click Element  ${Filter_Select_Brand}
    Run Keyword And Ignore Error  Checkbox Should Be Selected  ${Filter_Select_Brand}
 
Product Selection
    Wait Until Element Is Enabled  ${Text_Product}
    Run Keyword And Ignore Error  Mouse Over  ${Text_Product}
    Click Element  ${Text_Product}
    
Add to cart  
    Switch Window  NEW
    Wait Until Element Is Enabled  ${Text_Product}  
    Run Keyword And Ignore Error  Mouse Over  ${Buy_Btn}
    Click Button  ${Buy_Btn} 
    Wait Until Element Is Enabled  ${Cart_Btn} 
    Run Keyword And Ignore Error  Mouse Over  ${Cart_Btn}
    Click Element  ${Cart_Btn}
  
Checkout Cart
     Wait Until Element Contains  ${Check_Cart}  ۱
     Click Element  ${Continue_Btn}
     Wait Until Element Is Enabled  ${Send_Time_Btn}  

Buying Products
    Select Seller
    Select Brand
    Product Selection
    Add to cart
    Checkout Cart
