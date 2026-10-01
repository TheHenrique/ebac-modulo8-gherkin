# language: pt

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que eu acesse a página do produto "Augusta Pullover Jacket"

  Cenário: Adicionar produto configurado ao carrinho
    Quando eu selecionar o tamanho "M", a cor "Blue" e a quantidade "2"
    E clicar no botão "Comprar"
    Então o produto deve ser adicionado ao carrinho

  Esquema do Cenário: Seleções de cor, tamanho e quantidade obrigatórias
    Quando eu selecionar o tamanho "<tamanho>", a cor "<cor>" e a quantidade "<quantidade>"
    E clicar no botão "Comprar"
    Então o produto não deve ser adicionado ao carrinho
    E deve ser exibida uma mensagem pedindo para selecionar as opções do produto

    Exemplos:
      | tamanho | cor  | quantidade |
      |         | Blue | 1          |
      | M       |      | 1          |
      | M       | Blue | 0          |

  Esquema do Cenário: Limite de 10 produtos por venda
    Quando eu selecionar o tamanho "M", a cor "Blue" e a quantidade "<quantidade>"
    E clicar no botão "Comprar"
    Então o sistema deve "<resultado>"

    Exemplos:
      | quantidade | resultado                                          |
      | 1          | adicionar o produto ao carrinho                    |
      | 10         | adicionar o produto ao carrinho                    |
      | 11         | exibir mensagem de limite de 10 produtos por venda |

  Cenário: Limpar as seleções do produto
    Dado que eu tenha selecionado o tamanho "M", a cor "Blue" e a quantidade "3"
    Quando eu clicar no botão "Limpar"
    Então as seleções de tamanho, cor e quantidade devem voltar ao estado original
