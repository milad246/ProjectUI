***Settings***
Documentation  A Test Suit buying magazin from the category books and stationery
Library  SeleniumLibrary
Resource  ../../Resource/Common.robot
Force Tags  Buying Magazine
Test Setup  Select PopUp Categories And Book Magazine
Suite Teardown  Close All Browsers
Test Template  Buying Magazine

***Variables***
${Internal_Magazines}  //div[text()= "مجلات داخلی"]
${External_Magazines}  //div[text()="مجلات خارجی"]
${Internal_Product}  //img[@alt="مجله سینمایی فارابی شماره 84"] 
${External_Product}  //img[@alt="مجله THE BATMAN WHO LAUGHS 1 ژانویه 2018"] 
${Filter_Cover}  //*[contains(text(), "نوع جلد")] 
${Filter_Type_Cover}  //div[text()= 'کاغذی'] 
${Verify_Text}  //p[contains(text(), 'کاغذی')] 

***Test Cases***          type                   product              
Buying Magazine Internal  ${Internal_Magazines}  ${Internal_Product}      
Buying Magazine External  ${External_Magazines}  ${External_Product}    

***Keywords***
Buying Magazine
    [Arguments]  ${type}  ${product} 
    wait until element is visible  ${type} 
    Set Focus To Element  ${type} 
    Run Keyword And Ignore Error  Mouse Down  ${type}
    Click Element  ${type}
    Wait Until Element Is Enabled  ${Filter_Cover}
    Set Focus To Element  ${Filter_Cover}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Filter_Cover}
    Set Focus To Element  ${Filter_Cover}
    Run Keyword And Ignore Error  Mouse Down  ${Filter_Cover}
    Click Element  ${Filter_Cover}
    Set Focus To Element  ${Filter_Type_Cover}
    Run Keyword And Ignore Error  Mouse Down  ${Filter_Type_Cover}
    Click Element  ${Filter_Type_Cover}
    Run Keyword And Ignore Error  Checkbox Should Be Selected  ${Filter_Type_Cover}
    Wait Until Element Is Enabled  ${product}
    Set Focus To Element  ${product}
    Run Keyword And Ignore Error  Mouse Down  ${product}
    Click Image  ${product}
    Switch Window  NEW
    Wait Until Element Is Enabled  ${Verify_Text}






