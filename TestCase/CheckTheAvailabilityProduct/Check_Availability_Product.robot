*** Settings ***
Documentation  A Test suit for check availability of the product
Resource  ../../Resource/LoginToSystem.robot
Resource  ../../Resource/SelectCategoryProductApple.robot
Resource  ../../Resource/Check_Availability_Product.robot
Force Tags  Check Availability 
Suite Setup  Run Keywords  Valid Login
...          Categories And Select Apple Prodocts
Suite Teardown  Close Browser

*** Test Cases ***
Check product availability
    Check Availability



 

