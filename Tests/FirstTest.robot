*** Settings ***
Resource       ../PageObject/HomePage.robot
#Test Setup       monBefore     https://www.saucedemo.com/     chrome   #before Test
Test Teardown    Close All Browsers             #After Test
Library    SeleniumLibrary
    
*** Variables ***
${monURL}    https://www.saucedemo.com/  #Declaration de variables

*** Test Cases ***     #nos tests
Test de connexion OK    #comme @Test appel des methode cnx en dirai
      Connexion    standard_user    secret_sauce     #appel cnx avec parametre
      Vérifier l'affichage de la page produit     

Test de connexion identifiant invalide
    Connexion    standard_user    secret_sauce     #appel cnx avec parametre


Test add product card
    Connexion    locked_out_user    secret_sauce
    Ajouter produit au panier
    



    






    