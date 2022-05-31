#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com o meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Cenário: Seleção de produto
Dado que eu deva escolher obrigatoriamente "cor" 
E "tamanho"
E deve permitir até: "10 produtos" por venda
Quando eu clicar "limpar" deve voltar ao estado original
Então deve exibir uma mensagem em popup "Não há produtos selecionados"

#language: en

Feature: product config 
As an EBAC customer
I want to configure my product according to my size and style
and chose de amount
then add to cart

Scenario: Product selection
Given that i must choose: "color" 
And "size"
And it should only allow: "10 products" per sale
When I click "limpar" it should go back to the original state
Then it should display a popup message "não há produtos selecionados" 


