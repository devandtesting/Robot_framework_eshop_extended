*** Settings ***
Library        Browser
Variables      ../Locators/Locators.py

*** Keywords ***

Product Is Verified In The Cart
    Click          ${CART_ICON}
    Get Attribute  ${PRODUCT_IN_CART}    href     *=    6731111

Product Is Removed From The Cart
    Click          ${PRODUCT_SUBTRACT}
    Sleep          1s
    Click          ${CONFIRM_REMOVE}
