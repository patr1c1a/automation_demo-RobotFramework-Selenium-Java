*** Settings ***
Test Setup					Run Keywords  Browser Setup  AND  Open Browser  ${HOMEPAGE URL}  ${BROWSER}
Test Teardown				Close Browser