*** Settings ***
Library    SeleniumLibrary
Library   SeleniumLibrary        #importlibrary

*** Variables ***
${monURL}    https://www.saucedemo.com/  #Declaration de variables

*** Keywords ***   #unr fonction
Connexion 
    [Arguments]    ${username}     ${password}
    Open Browser    ${monURL}    chrome
    Input Text    id:user-name    ${username} 
    Input Password    id:password    ${password}   
    Click Button    id:login-button
monBefore
    Open Browser

Vérifier l'affichage de la page produit
    Page Should Contain Element    xpath://span[contains(text(),'Products')] 

Ajouter produit au panier
    Click Button    id:add-to-cart-sauce-labs-backpack
    Page Should Contain Element    id:remove-sauce-labs-backpack
    Click Button                   class:shopping_cart_link