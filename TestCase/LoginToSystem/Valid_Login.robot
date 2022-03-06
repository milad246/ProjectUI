*** Settings ***
Documentation  A Test suit for valid login to the digikala
Resource  ../../Resource/LoginToSystem.robot
Force Tags  LoginToSystem
Suite Teardown  Close Browser

*** Test Cases ***
Login To System
    Valid Login