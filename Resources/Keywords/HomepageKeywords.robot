*** Settings ***
Library        Browser
Variables      ../Locators/Locators.py
Variables      ../Config/Variables.py

*** Keywords ***

Alza Homepage Is Open
    New Browser    ${BROWSER}    headless=${HEADLESS}
    New Context    viewport={'width': 1400, 'height': 800}
    New Page       ${BASE_URL}

Homepage Is Returned
    Click          ${HOMEPAGE_LOGO}
