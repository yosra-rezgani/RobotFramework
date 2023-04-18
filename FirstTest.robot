*** Settings ***
Library   SeleniumLibrary        #importlibrary
Test Setup    #before Test
Test Teardown  Close Browser    ${monURL}     #After Test
    
*** Variables ***
${monURL}    https://www.saucedemo.com/  #Declaration de variables

*** Test Cases ***     #nos tests
Test de connexion OK    #comme @Test appel des methode cnx en dirai
      Connexion    standard_user    secret_sauce     #appel cnx avec parametre
      Vérifier l'affichage de la page produit     

Test de connexion utilisateur bloqué
    Connexion    locked_out_user    secret_sauce     #appel cnx avec parametre
    Vérifier l'affichage de la page produit    

Test de connexion identifiant invalide
    Connexion    locked_out_user    secret_sauce     #appel cnx avec parametre
    Vérifier l'affichage de la page produit 

Test add product card
    Ajouter produit au panier
    

*** Keywords ***   #unr fonction
Connexion 
    [Arguments]    ${username}     ${password}
    Open Browser    ${monURL}    chrome
    Input Text    id:user-name    ${username} 
    Input Password    id:password    ${password}   
    Click Button    id:login-button

Vérifier l'affichage de la page produit
    Page Should Contain Element    xpath://span[contains(text(),'Products')] 

Ajouter produit au panier
    Click Button    id:add-to-cart-sauce-labs-backpack
    Page Should Contain Element    id:remove-sauce-labs-backpack

    






    