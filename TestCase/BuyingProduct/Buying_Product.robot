*** Settings ***
Documentation  A Test suit buying product on the digikala
Resource  ../../Resource/Variables.robot
Resource  ../../Resource/LoginToSystem.robot
Resource  ../../Resource/Delete_Product.robot
Resource  ../../Resource/SelectCategoryProductApple.robot
Resource  ../../Resource/BuyingProduct.robot
Force Tags  Buying Product new
Suite Setup  Run Keywords  Valid Login  
# ...         Delete Cart
...         Categories And Select Apple Prodocts
Suite Teardown  Run Keywords  Delete Cart    
...             Close Browser

*** Test Cases ***
Verfy Buying product on the Digikala
    Buying Products 




    

 