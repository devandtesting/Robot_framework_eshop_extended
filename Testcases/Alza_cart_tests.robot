*** Settings ***
Resource   ../Resources/Keywords/KeywordsPageList.robot

*** Test Cases ***
Add And Remove Product From Cart
    Given Alza Homepage Is Open
    When Product Is Selected
    And Product Is Added To The Cart
    Then Product Is Verified In The Cart
    When Product Is Removed From The Cart
    Then Homepage Is Returned