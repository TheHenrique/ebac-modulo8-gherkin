# language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que eu acesse a página de login da EBAC-SHOP

  Cenário: Login com dados válidos
    Quando eu inserir o usuário "cliente@ebac.com.br" e a senha "Senha@123"
    E clicar no botão "Login"
    Então devo ser direcionado para a tela de checkout

  Esquema do Cenário: Login com dados inválidos
    Quando eu inserir o usuário "<usuario>" e a senha "<senha>"
    E clicar no botão "Login"
    Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

    Exemplos:
      | usuario              | senha       |
      | invalido@ebac.com.br | Senha@123   |
      | cliente@ebac.com.br  | senhaerrada |
      | invalido@ebac.com.br | senhaerrada |
