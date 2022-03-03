*** Settings ***
Documentation  A Test Suit buying magazin from the category books and stationery
Library  SeleniumLibrary
Resource  ../../Resource/Common.robot
Force Tags  Buying Magazine
Test Setup  Select PopUp Categories And Book Magazine
Suite Teardown  Close All Browsers
Test Template  Buying Magazine

*** Variables ***
${Internal_Magazines}  //div[@class='categoryCard_categoryCard__image__H_Wns']//img[@class="lazyloaded" or @alt="مجلات داخلی"]
${External_Magazines}  //div[@class='categoryCard_categoryCard__image__H_Wns']//img[@class="ls-is-cached" or @alt="مجلات خارجی"]
${Filter_Cover}  //section[contains(@class,"plpLayout_plplayout__filter__6kcec")]/descendant::*[contains(@class,"text-subtitle-strong") and text()="نوع جلد"]
${Filter_Type_Cover}  //section[2]/descendant::*[@class="text-subtitle-strong" and text()="کاغذی"]
${Filter_Type_Cover_Checkbox}  //section[2]/descendant::*[@class="text-subtitle-strong" and text()="کاغذی"]/preceding::*[contains(@class,"Checkbox_module_Checkbox__checkbox_Secondary__9c06606f")][1]/../input
${Internal_Product}  //*[contains(@class,'border-r-100')]/following::*//img[(contains(@class,'radius-medium') and @alt='مجله سینمایی فارابی شماره 84')] 
${External_Product}  //*[contains(@class,'border-r-100')]/following::img[(contains(@class,'radius-medium') and @alt="مجله THE BATMAN WHO LAUGHS 1 ژانویه 2018")]
${Verify_Text}  //p[@class='color-500 text-body-1']/following-sibling::p[text()="کاغذی"]

*** Test Cases ***          type                   product              
Buying Magazine Internal  ${Internal_Magazines}  ${Internal_Product}      
Buying Magazine External  ${External_Magazines}  ${External_Product}    

*** Keywords ***
Buying Magazine
    [Arguments]  ${type}  ${product} 
    wait until element is visible  ${type} 
    Click Element  ${type}
    Wait Until Element Is Enabled  ${Filter_Cover}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Filter_Cover}
    Click Element  ${Filter_Cover}
    wait until element is visible  ${Filter_Type_Cover}
    Run Keyword And Ignore Error  Scroll Element Into View  ${Filter_Type_Cover}
    Set Focus To Element  ${Filter_Type_Cover}
    Click Element  ${Filter_Type_Cover}
    Get Element Attribute  ${Filter_Type_Cover_Checkbox}  checked
    wait until element is visible  ${product}
    Click Image  ${product}
    Switch Window  NEW
    Wait Until Element Is Enabled  ${Verify_Text}


 



