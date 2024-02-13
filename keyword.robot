*** Settings ***


Library                           SeleniumLibrary
Resource                          ${CURDIR}/variable.robot


*** Keywords ***


Open Web Navaju
    Open Browser                            ${url}    ${chorme}
    Maximize Browser Window
    Click Element                           ${locator_popup_x}
    Wait Until Page Contains                การ์ตูนมาใหม่
    Click Element                           ${locator_accept_cookie}
    
Verify manu button
    Click Element                           ${locator_manu_cartoon}
    Wait Until Page Contains                การ์ตูน

Verify get name books
    Verify manu button
    Scroll Element Into View                ${locator_name_book1}
    ${txt1} =    Get Text                   ${locator_name_book1}  
    Should Be Equal As Strings              ${txt1}                        กอดได้ไหม หวานใจรักแรกของผม! (เล่มเดียวจบ)
    ${txt2} =    Get Text                   ${locator_name_book2}  
    Should Be Equal As Strings              ${txt2}                        ได้เวลาโชว์ฮา เล่ม 3
    ${txt3} =    Get Text                   ${locator_name_book3}  
    Should Be Equal As Strings              ${txt3}                        โปเกมอน สเปเชียล เล่ม 59
    ${txt4} =    Get Text                   ${locator_name_book4}  
    Should Be Equal As Strings              ${txt4}                        คดีประหลาด คนปีศาจ เล่ม 17
    ${txt5} =    Get Text                   ${locator_name_book5}  
    Should Be Equal As Strings              ${txt5}                        บารากะมอน เกาะมีฮา คนมีเฮ เล่ม 12

Verify basket button
    Verify manu button
    Scroll Element Into View                ${locator_basket_button1}
    Click Button                            ${locator_basket_button1}
    Click Button                            ${locator_basket_button2}
    Click Button                            ${locator_basket_button3}
    Click Button                            ${locator_basket_button4}
    Click Button                            ${locator_basket_button5}
    Wait Until Element Is Not Visible       เพิ่มสินค้าในตระกร้าสำเร็จ

Verify my cart button
    Set Focus To Element                    ${locator_mycart}
    Click Element                           ${locator_mycart}
    Wait Until Page Contains                ตะกร้าของฉัน

Verify all books in my cert
    ${txt1} =    Get Text                   ${locator_book1_mycart}
    Should Be Equal As Strings              ${txt1}                        กอดได้ไหม หวานใจรักแรกของผม! (เล่มเดียวจบ)
    ${txt2} =    Get Text                   ${locator_book2_mycart}
    Should Be Equal As Strings              ${txt2}                        ได้เวลาโชว์ฮา เล่ม 3
    ${txt3} =    Get Text                   ${locator_book3_mycart}
    Should Be Equal As Strings              ${txt3}                        โปเกมอน สเปเชียล เล่ม 59
    ${txt4} =    Get Text                   ${locator_book4_mycart}
    Should Be Equal As Strings              ${txt4}                        คดีประหลาด คนปีศาจ เล่ม 17
    Scroll Element Into View                ${locator_book5_mycart}
    ${txt5} =    Get Text                   ${locator_book5_mycart}
    Should Be Equal As Strings              ${txt5}                        บารากะมอน เกาะมีฮา คนมีเฮ เล่ม 12

Verify delete book in my cert

    Verify basket button
    Verify my cart button
    Scroll Element Into View                ${locator_book5_cancel}
    Click Element                           ${locator_book5_cancel}
    Click Button                            ${locator_cancel_btn}
    Wait Until Element Is Not Visible       ตะกร้าของฉัน
    Click Element                           ${locator_book4_cancel}
    Click Button                            ${locator_cancel_btn}
    Wait Until Element Is Not Visible       ตะกร้าของฉัน
    Click Element                           ${locator_book3_cancel}
    Click Button                            ${locator_cancel_btn}
    Wait Until Element Is Not Visible       ตะกร้าของฉัน
    Click Element                           ${locator_book2_cancel}
    Click Button                            ${locator_cancel_btn}
    Wait Until Element Is Not Visible       ตะกร้าของฉัน
    Click Element                           ${locator_book1_cancel}
    Click Button                            ${locator_cancel_btn}

Verify badge my cart is empty
    Verify delete book in my cert
    Wait Until Page Contains                ยังไม่มีรายการสินค้าในตะกร้า โปรดสั่งซื้อสินค้า
