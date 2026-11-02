# language: pt

Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que eu tenha um produto no carrinho
    E acesse a tela de checkout

  Cenário: Cadastro com todos os dados obrigatórios
    Quando eu preencher os campos obrigatórios assinalados com asterisco
    E clicar no botão "Finalizar compra"
    Então a compra deve ser finalizada com sucesso

  Esquema do Cenário: Cadastro com e-mail em formato inválido
    Quando eu preencher todos os campos obrigatórios com dados válidos
    Mas preencher o campo "Endereço de e-mail" com <email>
    E clicar no botão "Finalizar compra"
    Então deve ser exibida uma mensagem de erro informando que o e-mail é inválido
    E a compra não deve ser finalizada

    Exemplos:
      | email                |
      | joao.silva           |
      | joao.silva@          |
      | @email.com           |
      | joao silva@email.com |

  Esquema do Cenário: Cadastro com campo obrigatório vazio
    Quando eu preencher todos os campos obrigatórios com dados válidos
    Mas deixar o campo <campo> vazio
    E clicar no botão "Finalizar compra"
    Então deve ser exibida uma mensagem de alerta informando que o campo <campo> é obrigatório
    E a compra não deve ser finalizada

    Exemplos:
      | campo              |
      | Nome               |
      | Sobrenome          |
      | País               |
      | Endereço           |
      | Cidade             |
      | CEP                |
      | Telefone           |
      | Endereço de e-mail |
