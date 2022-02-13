***Settings***
Documentation  A Test Suit buying magazin from the category books and stationery
Library  SeleniumLibrary
Resource  ../../Resource/Common.robot
# Resource  ../../Resource/Buying_Magazine.robot
Force Tags  Buying Magazine
Suite Setup  Run Keywords 
...          Select PopUp Categories And Book Magazine
Suite Teardown  Close Browser

***Variables***
${Categories}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[1]/div[2]
${Type_CoverIntr}  css:.w-full:nth-child(10) .text-subtitle-strong
${Type_Cover}  //*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[10]/div[1]/div[2]/div/div
${Click_Paper_CoverIntr}  css:.w-full:nth-child(5) .d-inline-flex
${Click_Paper_Cover}  //*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[10]/div[2]/div[3]/div/div[1]/label/span
${Verify_Type}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[2]/ul/li[2]/p[2]
${Verify_TypeIntr}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[2]/ul/li[1]/p[2]
${Verify_Text}  //p[contains(text(), 'کاغذی')] 
${Internal_Magazines}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[1]/div[2]/a[1]/div[2]
${External_Magazines}  //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[1]/div[2]/a[2]/div[2]
${Internal_Product}  //img[@alt="مجله بخارا شماره 147"]  
# //*[contains(text(), "مجله سینمایی فارابی شماره 84")]
${External_Product}  //img[@alt="مجله بوردا آگوست 2021"]
# //*[contains(text(), "مجله THE BATMAN WHO LAUGHS 1 ژانویه 2018")]


***Test Cases***
Select Internal Magazin
    Run Keyword And Ignore Error  Mouse Down  ${Internal_Magazines}
    Click Element  ${Internal_Magazines}
    # Run Keyword And Ignore Error  Scroll Element Into View  ${Type_CoverIntr}
    # Run Keyword And Ignore Error  Mouse Down  ${Type_CoverIntr}
    # Click Element  ${Type_CoverIntr}
    # Run Keyword And Ignore Error  Mouse Down  ${Click_Paper_CoverIntr}
    # Click Element  ${Click_Paper_CoverIntr}
    #  Wait Until Element Is Enabled  ${Click_Paper_CoverIntr}
    Run Keyword And Ignore Error  Mouse Down  ${Internal_Product}
    Click Image  ${Internal_Product}
    Switch Window  NEW
    Wait Until Element Is Visible  ${Verify_TypeIntr} 
    Wait Until Element Contains  ${Verify_TypeIntr}  گلاسه

Select External Magazin
    Run Keyword And Ignore Error  Mouse Down  ${External_Magazines}
    Click Element  ${External_Magazines}
    # Run Keyword And Ignore Error  Scroll Element Into View  ${Type_Cover}
    # Run Keyword And Ignore Error  Mouse Down  ${Type_Cover}
    # Click Element  ${Type_Cover}
    # Run Keyword And Ignore Error  Mouse Down  ${Click_Paper_Cover}
    # Click Element  ${Click_Paper_Cover}
    #  Wait Until Element Is Enabled  ${Click_Paper_Cover}
    Run Keyword And Ignore Error  Mouse Down  ${External_Product}
    Click Image  ${External_Product}
    Switch Window  NEW
    Wait Until Element Is Visible  ${Verify_Type} 
    Wait Until Element Contains  ${Verify_Type}  گلاسه
