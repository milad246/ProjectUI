***Settings***
Library  SeleniumLibrary
Resource  Variables.robot

***Variables***
${Unavailable_Product}  //img[@alt="گوشی موبایل اپل مدل iPhone 12 mini A2176 ظرفیت 128 گیگابایت"]
${Let_Me_Know}  //*[contains(text(),"خبرم کنید")]
${Send_Email}  //*[contains(text(),"ارسال ایمیل به")]
${Unavailable}  (//*[text()='ناموجود'])[1]
${Second_Page}  //*[@id="plpLayoutContainer"]/section[1]/div[2]/div[2]/div/div[1] 
${Third_Page}  //*[@id="plpLayoutContainer"]/section[1]/div[2]/div[2]/div/div[2] 
 
***Keywords***
Move Page
  Set Selenium Speed  ${SPEED}
  Set Selenium Timeout  ${TIMEOUT} 
  Wait Until Page Contains  اپل  

Click Next
  Wait Until Element Is Enabled  ${Second_Page}
  Run Keyword And Ignore Error  Scroll Element Into View  ${Second_Page}
  Wait Until Element Is Visible  ${Second_Page}
  ${unavailable_el}=  get webelement  ${Unavailable}
  execute javascript   arguments[0].click();     ARGUMENTS    ${unavailable_el}

Product Page
  Switch Window  NEW
  Wait Until Element Is Enabled  ${Unavailable}  
  Run Keyword And Ignore Error  Mouse Down  ${Let_Me_Know}
  Run Keyword And Ignore Error  Mouse Up  ${Let_Me_Know}
 
Click Let_me_know
  Wait Until Element Is Enabled  ${Let_Me_Know}
  Run Keyword And Ignore Error  Mouse Down  ${News_Availability_Email}
  Run Keyword And Ignore Error  Mouse Up  ${News_Availability_Email}
  Click Element  ${Send_Email} 
  Run Keyword And Ignore Error  Checkbox Should Be Selected  ${Send_Email} 
 
Check Availability
    Move Page
    Click Next
    Product Page
    Click Let_me_know