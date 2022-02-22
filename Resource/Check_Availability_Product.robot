***Settings***
Library  SeleniumLibrary
Resource  Variables.robot

***Variables***
${Unavailable_Product}  //img[@alt="گوشی موبایل اپل مدل iPhone 12 mini A2176 ظرفیت 128 گیگابایت"]
${Let_Me_Know}  //*[contains(text(),"خبرم کنید")]
${Send_Email}  //*[contains(text(),"ارسال ایمیل به")]
${Unavailable}  (//*[text()='ناموجود'])[1]
${Second_Page}  //*[@id="plpLayoutContainer"]/section[1]/div[2]/div[2]/div/div[1] 
${Checkbox_finally}  //*[@id="modal-root"]/div[18]/div/div/div/div[2]/div/form/label[1]/label/input 
 
***Keywords***
Move Page
  Set Selenium Speed  ${SPEED}
  Set Selenium Timeout  ${TIMEOUT} 
  Wait Until Page Contains  اپل  

Click Next
  Run Keyword And Ignore Error  Scroll Element Into View  ${Second_Page}
  Wait Until Element Is Visible  ${Second_Page}
  ${unavailable_el}=  get webelement  ${Unavailable}
  execute javascript   arguments[0].click();     ARGUMENTS    ${unavailable_el}

Product Page
  Switch Window  NEW
  Wait Until Element Is Enabled  ${Unavailable}
  Set Focus To Element  ${Let_Me_Know}  
  Mouse Down  ${Let_Me_Know}
  Mouse Up  ${Let_Me_Know}
 
Click Let_me_know
  Wait Until Element Is Visible  ${Let_Me_Know}
  Set Focus To Element  ${Send_Email} 
  Click Element  ${Send_Email} 
  Run Keyword And Ignore Error  Checkbox Should Be Selected  ${Checkbox_finally}
 
Check Availability
    Move Page
    Click Next
    Product Page
    Click Let_me_know