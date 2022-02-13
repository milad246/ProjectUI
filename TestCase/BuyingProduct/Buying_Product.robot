***Settings***
Documentation  A Test suit buying product on the digikala
Resource  ../../Resource/LoginToSystem.robot
Resource  ../../Resource/Variables.robot
Resource  ../../Resource/SelectCategoryProductApple.robot
Resource  ../../Resource/BuyingProduct.robot
Force Tags  Buying Product
Suite Setup  Run Keywords  Valid Login  
...         Categories And Select Apple Prodocts
Suite Teardown  Close Browser


***Test Cases***
Verfy Buying product on the Digikala
    Buying Products 



    

 