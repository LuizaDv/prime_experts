*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${base_email}  @robot.com

*** Keywords ***
Criar email 
  [Arguments]  ${nome}  ${sobrenome}  ${idade} 
  [Return]  ${nome}_${sobrenome}_${idade}${base_email}

Criar email embutido ${nome} ${sobrenome} ${idade}
  [Return]  ${nome}_${sobrenome}_${idade}${base_email}
