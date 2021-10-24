*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
Contando de ${valor_inicial} à ${valor_final}
  Log To Console  \n Exercício IF
  FOR  ${contador}  IN RANGE  ${valor_inicial}  ${valor_final}+1
    Run Keyword If  ${contador}==5 or ${contador}==8
    ...  Log To Console  \n Estou no número: ${contador} \n
  END