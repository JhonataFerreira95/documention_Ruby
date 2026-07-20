# Documentação Ruby — Ruby Avaçado 

## índice 

1. [Introdução ao `ruby` avançado](#introdução)
2. [Conhecendo o objeto Date](#objeto-date)
3. [Conhecendo o objeto Time](#objeto-time)
4. [Comparação entre tempos](#compoaração-de-tempos)
5. [Formatação de tempo](#formtação-de-tempo)


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

    - Aqui utilizei o `time` para setar o ano, mês, dia, hora, minuto e segundo.

---

- Atribuindo o `time` a uma variável:

    ```ruby 
         
        some_time = Time.new(2023, 5, 12, 18, 43, 51) # Atribuindo a uma várivel 

        puts some_time.year
        puts some_time.month
        puts some_time.day

        puts some_time.hour
        puts some_time.min
        puts some_time.sec

        puts some_time.wday


    ```

    - Aqui atribuir os valores do `time` a uma variável para poder manipular a mesma, separar como fiz com o objeto `date`, tamném recuperei a hora, minuito e segundo.

---

- Fazendo a adição e subtração com `time`:

    ```ruby 

        # Adição e subtração

        start_of_year = Time.new(2024)
        puts start_of_year

        # 60 segundos em minuto
        # 60 mintos em uma hora
        # 24 horas em um dia
        # 30 dias

        puts start_of_year + (60*60*24*30)

    ```

    - Aqui utilizei a soma da data inicial com 30 dias e com a 24 horas extras, dando um total de 31 dias.

---

## Compoaração de tempos

> Aqui irei continuar utilizando o `time` mas para realizar comparação de tempos.

- Aqui estou implementado o `time` para realizar os teste com variáveis, como não passei nenhum parâmentro como hora, minuto e segundo, por default será atribuído 0.000:

    ```ruby

        birthday = Time.new(2001, 8, 28)
        summer = Time.new(2026, 5, 21)
        winter = Time.new(2022, 3, 10)
        idependence_day = Time.new(1822, 9, 7)

    ```

    - Irei usar essas variáveis para utilizar de exemplo

---

- Comparações:

    ```ruby
        
        birthday = Time.new(2001, 8, 28)
        idependence_day = Time.new(1822, 9, 7)

        puts birthday > idependence_day

    ```

    - Podemos fazer comparações utilizando o `time`, tanto com data quanto com hora mesmo. Aqui fiza a comparação se `birthday` é maior que `idependence_day`.

---

## Formtação de tempo

> É importante quando tratamos dados com `date` ou `time` a formatação dos mesmo para facilitar a leitura e o próprio tratamento dos dados para algo maus sucinto. Irei utilziar dados de referência e irei utilizar uma tabela, sinta-se a vontado para recorrer a mesma quando achar necessário.

