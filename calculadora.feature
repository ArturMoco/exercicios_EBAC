            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois numeros

            Cenário: Soma de 2 numeros
            Dado que eu acesse a calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar <num1> mais <num2>
            Então deve exibir o <total>

            Exemplos:
            | num1 | num2 | total |
            | 1    | 1    | 2     |
            | 1000 | 344  | 1344  |
            | 8300 | 1700 | 10000 |
            | -2   | 4    | 2     |
