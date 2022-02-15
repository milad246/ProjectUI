***Settings***
Documentation  A Test Suit buying magazin from the category books and stationery
Library  SeleniumLibrary
Resource  ../../Resource/Common.robot
Resource  ../../Resource/Variables.robot
Force Tags  Buying Magazine
Test Setup  Run Keywords  Select PopUp Categories And Book Magazine
Suite Teardown  Close All Browsers
Test Template  Buying Magazine

***Test Cases***          type                   product              checkBox_Paper             verifytype
Buying Magazine Internal  ${Internal_Magazines}  ${Internal_Product}  ${Click_Paper_CoverIntr}  ${Verify_TypeIntr}      
Buying Magazine External  ${External_Magazines}  ${External_Product}  ${Click_Paper_Cover}       ${Verify_Type}  

***Keywords***
Buying Magazine
    [Arguments]  ${type}  ${product}  ${checkBox_cover}  ${verifytype} 
    Run Keyword And Ignore Error  Mouse Down  ${type}
    Click Element  ${type}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Filter_Cover}
    Run Keyword And Ignore Error  Mouse Down  ${Filter_Cover}
    Click Element  ${Filter_Cover}
    Run Keyword And Ignore Error  Mouse Down  ${checkBox_cover}
    Click Element  ${checkBox_cover}
    Wait Until Element Is Enabled  ${checkBox_cover}
    Run Keyword And Ignore Error  Mouse Down  ${product}
    Click Image  ${product}
    Switch Window  NEW
    Wait Until Element Is Visible  ${verifytype} 
    Wait Until Element Contains  ${verifytype}  کاغذی



