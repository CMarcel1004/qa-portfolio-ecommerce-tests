#language: pt

Funcionalidade: Carrinho de compras
  Como usuário logado na aplicação
  Quero gerenciar os produtos no meu carrinho
  Para revisar minha seleção antes de finalizar a compra

  Contexto:
    Dado que o usuário está logado com "standard_user" e "secret_sauce"

  Cenário: Adicionar um produto ao carrinho
    Dado que o usuário está na página de produtos
    Quando clica no botão "Add to cart" do produto "Sauce Labs Backpack"
    Então o ícone do carrinho deve exibir o contador "1"

  Cenário: Adicionar múltiplos produtos ao carrinho
    Dado que o usuário está na página de produtos
    Quando clica no botão "Add to cart" do produto "Sauce Labs Backpack"
    E clica no botão "Add to cart" do produto "Sauce Labs Bike Light"
    Então o ícone do carrinho deve exibir o contador "2"

  Cenário: Remover um produto diretamente da página de produtos
    Dado que o usuário está na página de produtos
    E adicionou o produto "Sauce Labs Backpack" ao carrinho
    Quando clica no botão "Remove" do produto "Sauce Labs Backpack"
    Então o ícone do carrinho deve exibir o contador "0"
    E o botão do produto deve voltar a exibir "Add to cart"

  Cenário: Visualizar produto adicionado dentro do carrinho
    Dado que o usuário adicionou o produto "Sauce Labs Backpack" ao carrinho
    Quando acessa o carrinho
    Então deve visualizar o produto "Sauce Labs Backpack" listado no carrinho

  Cenário: Remover um produto dentro do carrinho
    Dado que o usuário adicionou o produto "Sauce Labs Backpack" ao carrinho
    Quando acessa o carrinho
    E clica no botão "Remove" do produto "Sauce Labs Backpack"
    Então o carrinho deve ficar vazio
    E o ícone do carrinho não deve exibir contador

  Cenário: Continuar comprando a partir do carrinho
    Dado que o usuário adicionou o produto "Sauce Labs Backpack" ao carrinho
    Quando acessa o carrinho
    E clica no botão "Continue Shopping"
    Então deve ser redirecionado para a página de produtos

  Cenário: Acessar o carrinho vazio
    Dado que o usuário não adicionou nenhum produto ao carrinho
    Quando acessa o carrinho
    Então o carrinho deve estar vazio
    E o botão "Checkout" deve estar visível
