***Settings***
Documentation  A Test Suit Remove the product from the cart
Resource  ../../Resource/BuyingProduct.robot
Resource  ../../Resource/LoginToSystem.robot
Resource  ../../Resource/SelectCategoryProductApple.robot
Resource  ../../Resource/Delete_Product.robot
Force Tags  Delet Product
Suite Setup  Run Keywords  Valid Login  
# ...          Categories And Select Apple Prodocts
# ...          Buying Products         
Suite Teardown  Close Browser

***Test Cases***
Verify Delet Product from the cart
    Select Cart

