*** Settings ***
Library   SeleniumLibrary

*** Variables ***
@{paises}  brasil  portugal  venezuela  espanha  chile

*** Keywords ***
Contando de ${valor_inicial} à ${valor_final}
  Log To Console  \n Exercício FOR
  FOR  ${contador}  IN RANGE  ${valor_inicial}  ${valor_final}+1
    Log To Console  \n Estou no número: ${contador} \n
  END

Contando países
  FOR  ${país}  IN  @{paises}
    Log To Console  \n Já viajei para: ${país} \n
  END
