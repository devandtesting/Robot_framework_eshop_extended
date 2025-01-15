*** Settings ***
Library        Browser
Variables      ../Locators/Locators.py

*** Keywords ***

Product Is Added To The Cart
    Click          ${ADD_TO_CART}
