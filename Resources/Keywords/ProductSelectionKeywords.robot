*** Settings ***
Library        Browser
Variables      ../Locators/Locators.py

*** Keywords ***

Product Is Selected 
    Click          ${MOBILES_BUTTON_1}
    Click          ${MOBILES_BUTTON_2}
    Click          ${IPHONE_13_BLACK}            
