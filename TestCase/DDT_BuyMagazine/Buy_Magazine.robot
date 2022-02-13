***Settings***
Documentation  A Test Suit buying magazin from the category books and stationery
Library  SeleniumLibrary
Resource  ../../Resource/Common.robot
# Resource  ../../Resource/Buying_Magazine.robot
Force Tags  Buying Magazine
Suite Setup  Run Keywords  Select PopUp Categories And Book Magazine
Suite Teardown  Close Browser
Test Template  Scenario DDT    

***Test Cases***
Verfying Internal Magazine  ${Internal_Magazines}
Verifying External Magazine  ${External_Magazines}




