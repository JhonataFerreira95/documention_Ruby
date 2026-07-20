# Documentação Ruby — Ruby Avaçado 

## índice 

1. [Introdução ao `ruby` avançado](#introdução)
2. [Conhecendo o objeto Date](#objeto-date)
3. [Conhecendo o objeto Time](#objeto-time)


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

    ---

    - Podemos utilizar uma variável para guarda os dados do `Date` atribuindo a mesma com `chomp` ou diretamente;

        ```ruby

            birthday = Date.new(2001, 8, 28)
            puts birthday.class # Recuperando tipo da classe
            puts birthday.year # Recuperando ano
            puts birthday.day # Recuperando dia
            puts birthday.month # Recuperando mês

        ```

        - Aqui podemos recuperar o tipo da `Classe`, o `ano`, o `dia` e o `mês` separadamente; 

            ![date_month](/Banco%20de%20dados%20SQL/Assets/recuperando_dia_mes_ano.png)

    ---

    - Utilizando o `wday`;

        ```ruby

            # data.wday

            # 0 - domingo
            # 1- segunda
            # 3 - terça
            # 4 - quarta
            # 5 - sexta
            #  6 - sábado

            puts birthday.monday?
            puts birthday.tuesday?
            puts birthday.wednesday?
            puts birthday.thursday?
            puts birthday.friday?

        ```

        - Aqui utilizamos o `wday` para saber o dia da semana de 0..6 podemos saber, cada número representa um dia da semana, caso queira algo mais específico temos as famosa verificações com cada dia da semana como `.monday?`, para saber se aquela data é segunda-feira.

            ![wday](/Banco%20de%20dados%20SQL/Assets/wday.png)

    ---

## Objeto `time`

> Irei aborda o objeto `time`, isso nos permite manipular o tempo livremente, como hora, minuto e segundo.

- Manipulando a hora:

    ```ruby

        puts Time.new 

        puts Time.now # Para saber o tempo de agora

    ```
    
    - Aqui estamos usando o `time` para ver o tempo real.

---

- Ver qualquer tempo/data usando o `time`:

    ```ruby

        puts Time.new(2023)

        puts Time.new(2023, 5, 12, 18, 43, 51) # Usando ano, mês, dia, hora, minuito e segundo

    ```

    - Aqui utilizei o `Time` para setar o ano, mês, dia, hora, minuto e segundo.

---

-