# Documentação Ruby — Ruby Avaçado 

## índice 

1. [Introdução ao `ruby` avançado]
2. [Conhecendo o objeto Date](#objeto-date)


---

## Introdução

> Nesse arquivo irei aborda algumas manipulações avançadas com `ruby` como objeto `date`, objto `time`, expressões `regulares` e `testes`. O `ruby` tem um módulo nativo chamado `minetest` e isso é muito prático, iremos aproveitar bastante desse módulo.

---

## Objeto `Date` 

> Irei aborda o módulo `date` que é nativo do ruby, assim podemos manipular datas livremente para nosssos objetivos.

- Manipulando datas:

    ```ruby

        require 'date' 

        # Exemplos de date

        puts Date.new(2001) # Referente ao ano

        puts Date.new(2001, 8) # Referente ao ano e o mês

        puts Date.new(2001, 8, 28) # Referente ao ano, mês e dia

    ```

    - Aqui usei o `Date.new` apenas para atribuir a data e imprimir no terminal. Observa-se que quando não defino `mês` e nem o `dia`, o `Date` puxa tudo do mês/dia 01;

    ![date](/Banco%20de%20dados%20SQL/Assets/date.png)