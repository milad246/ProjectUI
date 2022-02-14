***Settings***
Library  SeleniumLibrary
Resource  Variables.robot

***Variables***
${Second_Page}  //*[@id="plpLayoutContainer"]/section[1]/div[2]/div[2]/div/div[1] 
${Third_Page}  //*[@id="plpLayoutContainer"]/section[1]/div[2]/div[2]/div/div[2]  
${Unavailable_Product}  //img[@alt="گوشی موبایل اپل مدل iPhone 12 mini A2176 ظرفیت 128 گیگابایت"]
${Verify_Product}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[1]/div/h1
${Text_Verify_Product}  iPhone 12 mini A2176 
# //h1[contains(text(), "گوشی موبایل اپل مدل iPhone 12 mini A2176 ظرفیت 128 گیگابایت")] 
${Let_Me_Know}  css:.jc-center > .ml-2 > svg 
${News_Availability_Email}  css:.d-flex:nth-child(1) > .d-flex > .d-inline-flex
${Button}  css:.px-10 

***Keywords***
Move Page
  Set Selenium Speed  ${SPEED}
  Set Selenium Timeout  ${TIMEOUT} 
  Wait Until Page Contains  اپل  

Click Next
  Run Keyword And Ignore Error  Scroll Element Into View  ${Second_Page}
  Wait Until Element Is Enabled  ${Second_Page}
  Run Keyword And Ignore Error  Mouse Over  ${Third_Page}
  Wait Until Element Is Enabled  ${Third_Page}
  Run Keyword And Ignore Error  Mouse Down  ${Unavailable_Product}
  Run Keyword And Ignore Error  Mouse Up  ${Unavailable_Product}
  # ${unavailable_el}=  get webelement  ${unavailable}
  # execute javascript   arguments[0].click();     ARGUMENTS    ${unavailable_el}

Product Page
  Switch Window  NEW
  Wait Until Element Contains  ${Verify_Product}  ${Text_Verify_Product}
  Run Keyword And Ignore Error  Mouse Down  ${Let_Me_Know}
  Run Keyword And Ignore Error  Mouse Up  ${Let_Me_Know}
 
Click Let_me_know
  Wait Until Element Is Enabled  ${Let_Me_Know}
  Run Keyword And Ignore Error  Mouse Down  ${News_Availability_Email}
  Run Keyword And Ignore Error  Mouse Up  ${News_Availability_Email}
  Click Element  ${Button}  
 
Check Availability
    Move Page
    Click Next
    Product Page
    Click Let_me_know