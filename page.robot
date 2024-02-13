*** Settings ***


Documentation               Test Scenario & Test Case of website "nejavu"
Library                     SeleniumLibrary
Resource                    ${CURDIR}/variable.robot
Resource                    ${CURDIR}/keyword.robot
Suite Setup                 Set Selenium Speed            0.6s
Test Setup                  Open Web Navaju
Test Teardown               Close Browser
Suite Teardown              Close All Browsers


*** Test Cases ***

TC000 - Test Scenario Nejavu website
    [Documentation]        ทดสอบภาพรวมของการเข้าใช้งานเว็บไซต์
    [Tags]      Pass
    Verify badge my cart is empty
    Click Element                           ${locator_logo_home}


# ส่วน Case ข้างล่างเป็นการ Test แบบแยกย่อยแต่ละหัวข้อ

TC001 - Check open website
    [Tags]      Pass
    Open Web Navaju

TC002 - Check clink manu
    [Tags]      Pass
    Verify manu button

TC003 - Check get all books
    [Tags]      Pass
    Verify manu button
    Verify get name books

TC004 - Check basket button 
    [Tags]      Pass
    Verify basket button

TC005 - Check my cart button
    [Tags]      Pass
    Verify basket button
    Verify my cart button

TC006 - Check list books in my cart
    [Tags]      Pass
    Verify basket button
    Verify my cart button
    Verify all books in my cert

TC007 - Delete all books in my cart
    [Tags]      Pass
    Verify delete book in my cert

TC008 - Check item in my cart
    [Tags]      Pass
    Verify badge my cart is empty
