*** Settings ***
Documentation  A Test suit buying product on the digikala
Library  SeleniumLibrary
Resource  Variables.robot
Force Tags  New

*** Variables ***
${Type_Seller}  //*[text()="نوع فروشنده"]
${Select_Seller}  //*[contains(@class, 'text-subtitle-strong') and contains(text(), 'دیجی‌کالا')]/preceding::*[contains(@class, 'checkbox')][1]
${Select_Seller_Checkbox_Input}  //*[contains(@class, 'text-subtitle-strong') and contains(text(), 'دیجی‌کالا')]/preceding::*[contains(@class, 'checkbox')][1]/../input
${Filter_Brand}  //div[contains(@class,'text-subtitle-strong d-flex') and text()="برند"]
${Filter_Select_Brand}  //div[@class='text-subtitle-strong' and text()="اپل"]/preceding::*[contains(@class,"Checkbox_module_Checkbox__checkbox_Secondary__9c06606f")][1]
${Filter_Select_Brand_Checkbox_Input}  //div[@class='text-subtitle-strong' and text()="اپل"]/preceding::*[contains(@class,"Checkbox_module_Checkbox__checkbox_Secondary__9c06606f")][1]/../input
${Text_Product}  //img[contains(@data-src,'9582480838e6440356f8469461aa51a7fa84cba2_1631648769.jpg') and @alt="گوشی موبایل اپل مدل iPhone 13 Pro A2639 دو سیم‌ کارت ظرفیت 512 گیگابایت و 6 گیگابایت رم"]
${Verify_Product}  //div[@class='d-flex ai-center']/following-sibling::h1[text()="گوشی موبایل اپل مدل iPhone 13 Pro A2639 دو سیم‌ کارت ظرفیت 512 گیگابایت و 6 گیگابایت رم"]
${Add_Cart_Btn}  //*[contains(@class,"Button_module_btn_Medium__2510bed4") and @data-cro-id="pdp-add-to-cart"]//div[text()="افزودن به سبد"]
${Cart_Btn}  //*[@class="color-secondary-500" and @data-cro-id="pdp-see-cart-main"]//p[text()='سبد خرید']
${Check_Cart}  //div[@data-cro-id='cart-main-cart']//span[2]
${Continue_Btn}  //*[contains(@class,"d-block-lg")]/following::*[contains(@class, 'jc-center') and text()='ادامه']
${Send_Time_Btn}  //aside/descendant::*[text()='انتخاب زمان ارسال']

*** Keywords ***
Select Seller
    Set Selenium Speed  ${SPEED}
    Set Selenium Timeout  ${TIMEOUT}
    Wait Until Element Is Visible  ${Type_Seller}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Type_Seller}
    Wait Until Element Is Enabled  ${Type_Seller}
    Click Element  ${Type_Seller}
    Wait Until Element Is Visible  ${Select_Seller}  
    Run Keyword And Ignore Error  Scroll Element Into View  ${Select_Seller} 
    Wait Until Element Is Enabled  ${Select_Seller} 
    Page Should Contain Checkbox  ${Select_Seller_Checkbox_Input}      
    Set Focus To Element  ${Select_Seller} 
    Click Element  ${Select_Seller}
    Set Focus To Element  ${Select_Seller}
    Get Element Attribute  ${Select_Seller_Checkbox_Input}  checked

Select Brand
    Wait Until Element Is Visible  ${Filter_Brand} 
    Run Keyword And Ignore Error  Scroll Element Into View  ${Filter_Brand}  
    Click Element  ${Filter_Brand}
    Wait Until Element Is Visible  ${Filter_Select_Brand}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Filter_Select_Brand} 
    Page Should Contain Checkbox  ${Filter_Select_Brand_Checkbox_Input} 
    Set Focus To Element  ${Filter_Select_Brand}
    Click Element  ${Filter_Select_Brand}
    Set Focus To Element  ${Filter_Select_Brand}
    Get Element Attribute  ${Filter_Select_Brand_Checkbox_Input}  checked 

Product Selection
    Wait Until Element Is Enabled  ${Text_Product}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Text_Product}
    Wait Until Element Is Visible  ${Text_Product}    
    Click Element  ${Text_Product}
    
Add to cart  
    Switch Window  NEW
    Wait Until Element Is Enabled  ${Verify_Product}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Add_Cart_Btn}
    Wait Until Element Is Visible  ${Add_Cart_Btn}   
    Set Focus To Element  ${Add_Cart_Btn}
    Click Element  ${Add_Cart_Btn}
    Wait Until Element Is Visible  ${Cart_Btn} 
    Set Focus To Element  ${Cart_Btn} 
    Click Element  ${Cart_Btn} 

Checkout Cart
     Wait Until Element Contains  ${Check_Cart}  ۱
     Wait Until Element Is Visible  ${Continue_Btn}
     Set Focus To Element  ${Continue_Btn}
     Click Element  ${Continue_Btn}
     Wait Until Element Is Enabled  ${Send_Time_Btn} 

Buying Products
    Select Seller
    Select Brand
    Product Selection
    Add to cart
    Checkout Cart
