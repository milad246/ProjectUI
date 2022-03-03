*** Settings ***
Library  SeleniumLibrary
Resource  Variables.robot

*** Variables ***
${Second_Page}  //*[@id="plpLayoutContainer"]/section[1]/div[2]/div[2]/div/div[1] 
${Unavailable}  (//*[text()='ناموجود'])[1]
${Let_Me_Know}  //div[text()='خبرم کنید']
${Send_Email}  (//input[@class='visibility-hidden absolute']/following-sibling::span)[1]
${Send_Email_Checkbox}  (//input[@class='visibility-hidden absolute']/following-sibling::span)[1]/../input
${Send_Message}  (//input[@class='visibility-hidden absolute']/following-sibling::span)[2]  
${Send_Message_Checkbox}  (//input[@class='visibility-hidden absolute']/following-sibling::span)[2]/../input

*** Keywords ***
Move Page
  Set Selenium Speed  ${SPEED}
  Set Selenium Timeout  ${TIMEOUT} 
  Wait Until Page Contains  اپل  

Click Next
  Run Keyword And Ignore Error  Scroll Element Into View  ${Second_Page}
  Wait Until Element Is Visible  ${Second_Page}
  ${Unavailable_El}=  Get WebElement  ${Unavailable}
  Execute Javascript   arguments[0].click();     ARGUMENTS    ${Unavailable_El}
 
Product Page
  Switch Window  NEW
  Wait Until Element Is Enabled  ${Unavailable}
  Wait Until Element Is Visible  ${Let_Me_Know}   
  Mouse Down  ${Let_Me_Know}
  Mouse Up  ${Let_Me_Know}
 
Click Let_me_know
  Wait Until Element Is Visible  ${Let_Me_Know}
  Set Focus To Element  ${Send_Message} 
  Click Element  ${Send_Message}
  Get Element Attribute  ${Send_Email_Checkbox}  checked
  Set Focus To Element  ${Send_Email}
  Click Element  ${Send_Email}
  Get Element Attribute  ${Send_Message_Checkbox}  checked
  
Check Availability
    Move Page
    Click Next
    Product Page
    Click Let_me_know




  