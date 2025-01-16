*** Settings ***
Resource   ../Resources/Keywords/KeywordsPageList.robot

*** Variables ***
${PRODUCT_NAME}    iPhone 13 128GB černá

*** Test Cases ***
Add And Remove Product From Cart
    [Documentation]    This test finds a product based on search phrase, then verifies adding it to the cart, then removes it from the cart. 
    Given Alza Homepage Is Open
    When Product Is Searched And Opened    ${PRODUCT_NAME}
    And Product Is Added To The Cart
    Then Product Is Verified In The Cart
    When Product Is Removed From The Cart
    Then Homepage Is Returned