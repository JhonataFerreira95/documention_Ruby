# Documentação Ruby — Ruby Avaçado 

## índice 

1. [Introdução ao `ruby` avançado](#introdução)
2. [Conhecendo o objeto Date](#objeto-date)
3. [Conhecendo o objeto Time](#objeto-time)
4. [Comparação entre tempos](#compoaração-de-tempos)
5. [Formatação de tempo](#formtação-de-tempo)
6. [Expressões regulares com `ruby`](#expressões-regulares-com-ruby)
7. [Método scan](#metódo-scan)
8. [Extração de números](#extração-de-número-detro-das-expressões-regulares)
9. [Utizando âncora](#utilizando-âncora)
10. [Miscelânea](#miscelânea)

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

---

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

---

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

---

- Referência formatação:

    ```ruby

        %b # nome do mês abreviada(jan)
        %B # nome do mês completo(january)
        %d # dia do mês (1..31)
        %j # dia do ano (1.366)
        %m # mês como um número (1..12)
        %w # dia da semana como número (0..6)
        %y # ano em dois dígitos
        %Y # ano em quatro dígitos
                 
    ```

    - Nessa tabela podemos observar várias formas de formatação para ser utilizado tanto com `time` quanto com `date`.

---

- Formatando com `strf`:

    ```ruby

        someday = Time.new(2025, 3, 31)

        puts someday
        # puts someday.to_s

        puts someday.strftime("%Y-%m-%d")

    ```

    - Aqui utilizei uma das práticas da tabela `%` como o `%Y` que define o ano por dígitos, `%m` que define o mês por dias e `%d` que define o dia do mês por número. Após isso utilizei o método `strftime` para fazer a transformação de `data/time` em `string`.

---

## Expressões regulares com `Ruby`

> Expressão regulares é termo dado a busca por padrões textuais em um determinado dado de texto. Posso verificar se existe uma determinada frase começa por uma letra X e termina pela mesma letra x.

---

- Usanso o `include?`:

    ```ruby

        phrase = "Bleach the calamity"

        p phrase.include?("cala")

    ```

    - Aqui usei o `include?` para verificar a `string`, assim percorrendo a mesma atrás da palavra `cala`.

---

- Usando o `start_with`:

    ```ruby

        phrase = "Bleach the calamity"

        p phrase.start_with?("A")

    ```

    - Aqui utilizei o `start_with?` para verificar se no inicio da `string` começa com `A`, que de fato começa, vale ressaltar que se for uma letra minúscula ou maiscúla com o `start_with` ambas tem diferenças.
---

- Usando o `end_with`:

    ```ruby

        phrase = "Bleach the calamity!"

        p phrase.end_with?("calamity")

    ```

    - Usei o `end_with` para verificar a `string` se a mesma terminava com `calamity` mas vai resultar em `false` no terminal, já que não incluimos a `!` no final da frase.

---

- **Expressões regulares, tabela**:

    - \\d: Corresponde a qualquer dígito de 0 a 9.

    - \\D: Corresponde a qualquer caractere que não seja um dígito.

    - \\w: Corresponde a qualquer caractere alfanumérico (letras, dígitos e sublinhados).

    - \\W: Corresponde a qualquer caractere que não seja alfanumérico.

    - \\s: Corresponde a qualquer caractere de espaço em branco, como espaço, tabulação, nova linha, entre outros.

    - \\S: Corresponde a qualquer caractere que não seja espaço em branco.

    - \\b: Corresponde a uma fronteira de palavra.

    - \\B: Corresponde a qualquer posição que não seja uma fronteira de palavra.

    - \\A: Corresponde ao início da string.

    - \\Z: Corresponde ao final da string, ou ao final da linha se a opção multiline estiver habilitada.

---

- Utilizando as expressões regulares:

    ```ruby

        p /T/.class

    ```

    - Se executar esse código acima vai receber em terminal um `regexp`, é uma sequência de caracteres que forma um padrão de busca.

    ---

    ```ruby

        p phrase =~ /B/

    ```

    - Observa-se que utilizei o `=~` isso faz com que eu tente obter um a primeira ocorrência dessa lentra na minha `string`, que no caso é a posição 0. Funciona da mesma forma como percorrer um `array`.

    ---

    ```ruby

      p phrase =~ /cala/  

    ```

    - Aqui estou buscando a 1° ocorrência da palavra `cala` minúscula.

    ---

    - Vale ressaltar que não buscamos apenas por letra mas por palvaras completas ou qualquer tipo que esteja presente em uma string.

---

- Utilizando pattern:

    ```Ruby

        string = "Olá, mundo!"

        pattern = /mundo/

        if string =~ pattern
            puts "A string contém a palavra 'mundo'."
        else
            puts "A string não contém a palavra 'mundo'."
        end

    ```

    - Aqui usamos o `pattern` para detectar se existe uma palavra em determinado texto, basta usar o `pattern = /palavra_deseja/` e após isso criar uma condição ou loop dependendo da sua situação para verificar o padrão das palavras. 

---

## Metódo `Scan`

> O método `scan` é literalmente utilizado para escanear `string`, `int`, `boolean`, `array` e etc...

---

- Utilizando o `scan`:

    ```ruby

        string = "A linguagem ruby é poderosa e versátil. Ruby é divertido de aprender"

        pattern = /Ruby/

        results = string.scan(pattern)

        puts "O padrão 'ruby' foi encontrado #{results.length} vezes na string."
        puts "As ocorrências encontradas foram: #{results.join(',')}

    ```

    - Aqui eu não quis busca apenas a 1° ocorrência como no método das expressões e sim todas as vezes que a palavra `ruby` aparece, para isso manipulei uma `string` através do `pattern` novamente e definir que todos os resultado da `string` sejam retornado mas para isso usei o método `scan` para analisar e retorna esses resultados.

---

- Extraíndo todos os dígitos de uma string com `scan`:

    ```ruby

        string2 = "A OpenAI lançou o GPT-3 e o GPT-4 em 20202."

        number = string2.scan(/\d+/)

        puts "Os números inteiros encontrados na string são: #{numeros.join(', ')}"

    ```

    - Aqui estou extraíndo da `string` os número utilizando o `scan` com enfâse no `/\d+/` já que o mesmo corresponde a qualquer dígito de 0 a 9.

---

## Extração de número detro das expressões regulares

> Aqui irei aborda com extrair número dentro das expressões regulares, de uma forma detalhada. 

---

- para coletar números inteiros de 0..9 utilizamos o /\d+/. Para coletar números inteiros de 0..9 utilizamos o /-?\d+/
    
    - corresponde a um ou mais digítos. Pode encontrar qualquer sequência contínua de dígitos.

        - Extraindo números inteiros e decímais:

            ```ruby

                string = "A temperatura é 25° graus celsius e o preço é 19.99."

                numeros_int = string.scan(/-?\d+/)
                numeros_float = string.scan(/-?\d+\.\d+/)

                puts "números inteiros encontratos #{numeros_int.join(',')}"

            ```

            - Aqui utilizei as expressões regulares para encontra os números inteiro e decimais. Como já mencionei antes o `\d+/` é responsável pelos dígitos de 1 à 9, sendo assim capaz de encontra todos os dígitos utilizando o método `scan`.

---

- Extraindo e somando todos os números inteiros de uma `string` com `scan`:

    ```ruby

        string2 = "Aizen tem 1 hogyoku, tem 300 anos e 4 selos muken"

        numbers = string2.scan(/\d+/).map(&:to_i)
        sum = numbers.sum

        puts "Os números encontrados são #{numbers.join(',')}"
        puts "A soma de todos os números é: #{sum}"

    ```

    - Aqui utilizei o método `scan` com o `/\d+/` para coletar todos os números da `string`, após isso passei um `.map` com a condição `&:to_i` para percorrer a `string` e transforma todos os caracaters de números em inteiros e após isso usei o métodos `sum` para soma os itens do meu `map`.

---

## Utilizando âncora

> Para que utilizamos `âncora`? Serve para avaliar o que começa COM e o que termina COM dentro de uma determinada`string`.

---

- Veirificação de `string`:

    ```ruby

        strings = [ "Sosuke aizen", "Olá, aizen Sosuke", "O capitão aizen jamais faria isso"]

        strings.each do |string|
            if string =~ /\ASosuke.*aizen\z/
            puts "#{string} corresponde ao padrão"
            else
            puts "#{string} não corresponde ao padrão"
            end
        end

    ```

    - Aqui criei um `array` com determinadas frases, iremos anlisar o padrão dentro dessa mesma `string` utilizando o `/\A` para iniciar a verificação da `string`, após usamos o `.*` para verificar se a frase terminar com determinada palavra, assim verificando se possuí um padrão. Para fazer a verificação completa da `string` abri um loop para percorrer a `string` com `.each` para verificar e validar com uma condicional se `if string =~ /\ASosuke.*aizen\z/` para obeter a primeira ocorrência da `string` e com isso aplicar a nossa regra de verificação do inicio e final da mesma com `/\ASosuke.*aizen\z/`.

---

- Verificação de string e termina com 3.2 

    ```ruby

        string2 = ["Ruby-3.2", "Ruby-2.0", "Ruby-3.2, é poderoso"]

        string2.each do |string2|
        if string2 =~ /^Ruby.*3\.2$/
            puts "Corresponde à um padrão <#{string2}>"
        else
            puts "Não teve nenhum padrão em <#{string2}>"
        end
        end

    ```

    - Aqui verifquei o padrão que termina com 3.2, para usei expressões regulares para validar o inicio da `string` com `=~` após usei o a verficação da expressão `/^Ruby.*3\.2$/` para veirifcar o padrão se inicia com `Ruby` e termina com `3.2`, para percorrer a `string` usei um `each` para validar a verificação da expressão regular usei uma condiconal. 

---

## Miscelânea

> A `miscelânea` em `Ruby` refere-se a regras gerais de sintaxe, como o uso de quebras de linha para terminar expressões, operadores no fim da linha e ponto e vírgula.

---





