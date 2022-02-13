***Settings***
Documentation  A Test suit for check availability of the product
Resource  ../../Resource/LoginToSystem.robot
Resource  ../../Resource/SelectCategoryProductApple.robot
Resource  ../../Resource/Variables.robot
Force Tags  Check Availability
# Suite Setup  Run Keywords  Valid Login
# ...          Categories And Select Apple Prodocts
# Suite Teardown  Close Browser

***Variables***
${Second_Page}  //*[@id="plpLayoutContainer"]/section[1]/div[2]/div[2]/div/div[1] 
${Third_Page}  //*[@id="plpLayoutContainer"]/section[1]/div[2]/div[2]/div/div[2]  
${unavailable}  //*[contains(text(), "گوشی موبایل اپل مدل iPhone 13 Mini ظرفیت 512 گیگابایت و رم 4 گیگابایت - اکتیو ")] 
${next_page}  //*[@id="d12443f9-c0fa-4cf9-bab2-3aac4954fc83"]/div/div[40]/article/a

***Test Cases***
Check product availability
    Check Availability

***Keywords***
# Move Page
#   Open Browser  https://www.digikala.com/search/category-mobile-phone/?q=%D8%A7%D9%BE%D9%84&entry=mm&sort=7  chrome
#   Maximize Browser Window
#   Set Selenium Speed  ${SPEED}
#   Set Selenium Timeout  ${TIMEOUT} 
#   Wait Until Page Contains  اپل  

# Click Next
#   Run Keyword And Ignore Error  Scroll Element Into View  ${Second_Page}
#   Wait Until Element Is Enabled  ${Second_Page}
#   Run Keyword And Ignore Error  Mouse Over  ${Third_Page}
#   Click Link  ${next_page}  
#   Sleep  10s 

Five Page
  Open Browser  https://www.digikala.com/search/category-mobile-phone/?q=%D8%A7%D9%BE%D9%84&entry=mm&sort=7&page=5  chrome
  Maximize Browser Window

Check Availability
    # Move Page
    # Click Next
    Five Page

