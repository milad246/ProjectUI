***Settings***
Documentation  A Test Suit buying magazin from the category books and stationery
Library  SeleniumLibrary
Resource  ../../Resource/Common.robot
Force Tags  Buying Magazine
Test Setup  Run Keywords  Select PopUp Categories And Book Magazine
Suite Teardown  Close All Browsers
Test Template  Buying Magazine

***Variables***
${Categories}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[1]/div[2]
${Internal_Magazines}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[1]/div[2]/a[1]/div[2]
${External_Magazines}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[1]/div[2]/a[2]/div[2]
${Internal_Product}  //img[@alt="مجله سینمایی فارابی شماره 84"] 
${External_Product}  //img[@alt="مجله THE BATMAN WHO LAUGHS 1 ژانویه 2018"]  
${Verify_Text}  //p[contains(text(), 'کاغذی')] 
${Type_CoverIntr}  css:.w-full:nth-child(10) .text-subtitle-strong
${Type_Cover}  //*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[10]/div[1]/div[2]/div/div
${Click_Paper_CoverIntr}  css:.w-full:nth-child(5) .d-inline-flex 
${Check_Box_cover}  css:.w-full:nth-child(5) .d-inline-flex use
${Click_Paper_Cover}  //*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[10]/div[2]/div[3]/div/div[1]/label/span
${Verify_Type}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[2]/ul/li[2]/p[2]
${Verify_TypeIntr}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[2]/ul/li[1]/p[2]
# ${finally}  //*[contains(text(), "نوع جلد")]

***Test Cases***          type                   product              typecover          checkBox_Paper             verifytype
Buying Magazine Internal  ${Internal_Magazines}  ${Internal_Product}  ${Type_CoverIntr}  ${Click_Paper_CoverIntr}   ${Verify_TypeIntr}      
Buying Magazine External  ${External_Magazines}  ${External_Product}  ${Type_Cover}      ${Click_Paper_Cover}       ${Verify_Type}  

***Keywords***
Buying Magazine
    [Arguments]  ${type}  ${product}  ${type_cover_mag}  ${checkBox_cover}  ${verifytype} 
    Run Keyword And Ignore Error  Mouse Down  ${type}
    Click Element  ${type}
    Run Keyword And Ignore Error  Scroll Element Into View  ${type_cover_mag}
    Run Keyword And Ignore Error  Mouse Down  ${type_cover_mag}
    Click Element  ${type_cover_mag}
    Run Keyword And Ignore Error  Mouse Down  ${checkBox_cover}
    Click Element  ${checkBox_cover}
    Wait Until Element Is Enabled  ${checkBox_cover}
    Run Keyword And Ignore Error  Mouse Down  ${product}
    Click Image  ${product}
    Switch Window  NEW
    Wait Until Element Is Visible  ${verifytype} 
    Wait Until Element Contains  ${verifytype}  کاغذی



