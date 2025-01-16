*** Settings ***
Library        Browser
Variables      ../Locators/Locators.py

*** Keywords ***
Product Is Searched And Opened
    [Arguments]    ${PRODUCT_NAME}
    Fill Text      ${SEARCH_FIELD}    ${PRODUCT_NAME}
    Sleep          1s
    Click          ${SEARCH_BUTTON}    
    Get Product ID Of First Search Result
    Open First Found Product    

Get Product ID Of First Search Result
    ${product_id}=         Get Attribute    ${FIRST_SEARCH_RESULT}    data-id
    Set Global Variable    ${product_id}
    Log To Console         First Product Id: ${product_id}
    
Open First Found Product
    Click          css=#img${product_id}