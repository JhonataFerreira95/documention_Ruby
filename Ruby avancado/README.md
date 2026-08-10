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
11. [Introdução a testes](#introdução-a-testes)
12. [Testando uma classe](#testando-uma-classe)
13. [Usando Setup e TearDown](#usando-setup-e-teardown)

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

- Exemplo de exclusão de caracteres usando expressões regulares:

    ```ruby

        strings = ["apple", "cd", "cherry", "dt", "grape", "fig"]

        strings.each do |string|
        if string =~ /^[^aeiou]+$/
            puts "#{string} contém apenas consoantes"
        else
            puts "#{string} contém vogais"
        end 
        end

    ```

    - Utilzei um `array` para armazenar as `strings` assim podendo analisar onde se encontram vogais e consoantes. Para isso pecorrir o mesmo com um `each`, dentro do loop utilizei uma condicional para verificar a ocorrência `=~` se há falta de vogais no `if`, caso não tenha imprimos as ocorrências com vogais no `else`.

---

- Exemplos de uso do `sub` e o `gsub` em `Ruby` para substituir partes de uma string:

    - Usando o `sub`:

        ```ruby

            strings2 = "A linguagem Ruby é fácil de aprender e Ruby é divertida."

            novo_string_sub = strings2.sub(/Ruby/, 'Python')

            puts "Usando sub: "
            puts "String original: #{strings2}"
            puts "String modificada: #{novo_string_sub}"

        ```

        - O `sub` pega a primeira ocorrência na `string` e substituir pela palavra desejada definida no escopo do `sub`, que no caso foi `python`
    

    ---

    - Usando o `gsub`

        ```ruby

            strings2 = "A linguagem Ruby é fácil de aprender e Ruby é divertida."

            novo_string_gsub = strings2.gsub(/Ruby/, 'Python')

            puts "Usando gsub: "
            puts "String original: #{strings2}"
            puts "String modificada: #{novo_string_gsub}"

        ```

        - O `gsub`, toda vez que ele encontra a palavra que foi definida para substituição no escopo, ela será trocada pela palavra desejada. 

---

## Introdução a testes

> Os teste em `Ruby` são fundamentais, já que os mesmo analisam e verificam a nossa lógica para ver se estamos aderente ao que precisamos ter como resultado final. Como o `Ruby` possuí um módulo nativo para teste o `minitest`, irei aborda nesse capítulo como trabalhar com o mesmo. 

---

- Criando uma método para aplicar o `minitest`:

    ```ruby

        require "minitest/autorun"

        def sum(a, b)
        a + b
        end

        class TestingMathematics < Minitest::Test
            def test_sum_method
                assert_equal(5, sum(3, 2))
            end
        end

    ```

    - Aqui criei um exemplo de um método simple de soma para utilizamos o `minitest`. No começo do código para utilizar o `minitest` importei ele. Para utilização do `minitest` precisamos herda da `classe Minitest` para podermos herda os métodos de teste do módulo `minitest`.

    - No exemplo acima, herdei a para a minha `classe TestingMathematics` à `classe minitest` para utilizar os métodos de testing, assim podendo realizar os teste no meu método de soma. Dentro da minha `classe`, criei um método `test_sum_method`. Dentro desse método chamei o `assert_equal`, passei o resultado e após isso a operação, que no caso foi como resultado esperado é o `5` e meu método `sum(3, 2)`.

        - **`assert_equal`**

            - Serve para eu passar o resultado e após passo a operação, o objetivo do `assert_equal` é verificar se o resultado que passei vai ser o mesmo resultado que estou passando na operação.
        ---

    - Resultado:

        ![minitest](/Banco%20de%20dados%20SQL/Assets/minitest.png)

        - Observa-se que o resultado do teste foi `1 runs`, `1 assertions`, `0 failures` `0 errors` e `0 skips`. Sendo que foi rodado 1 teste, 1 acerto, 0 falhas, 0 erros e 0 skipados. O `.` no inicio significa que existia apenas um teste no arquivo. Caso tivesse 3 teste no arquivo e os 3 passasem ficaria algo como `...`.

        - Tabelas de resultados do `minitest`:  

            - **`.`** → Teste passou.

            - **`F`** → Teste falhou (failure).

            - **`E`** → Deu erro (error).

            - **`S`** → foi pulado (skip).

        ---

- Causando erro de propósito no teste:

    ```ruby

        require "minitest/autorun"

        def sum(a, b)
        a + b
        end

        class TestingMathematics < Minitest::Test
            def test_sum_method
            assert_equal(5, sum(3, 2))
            end

            def test_sum_method_again
            assert_equal(7, sum(4, 2))
            end
        end

    ```

    - Como pode ver, usei mais uma vez o `assert_equal` mas para causar um erro no teste, como pode ser visto abaixo:


        ![minitest_failure](/Banco%20de%20dados%20SQL/Assets/miniteste_failure.png)

        - Observa-se que antes do `finished` tem um sequência de `F.`, significa que um teste passou e outro falhou. Falhou porque o resultado que usamos foi `7` mas a nossa função retornou um `6`. Usamos os teste para evitar que o usuário reporte ou veja esses tipos de erros em nossa aplicação. Por isso temos toda uma triagem de teste em software para garantir que ele vai funcionar perfeiamente antes de ser lançado mas como sabemos isso é quase impossível um software ser perfeito, por isso corrigimos muitos erros ou bug via atualização. 

    ---

- Verificando se a palavra é palidroma:

    ```ruby

        def palindromo?(palavra)
            palavra.downcase == palavra.downcase.reverse
        end

        class TestPalindromo < Minitest::Test
        def test_palindromo
            assert_equal(true, palindromo?('ovo'))
            assert_equal(true, palindromo?('Ame a ema'))
            assert_equal(false, palindromo?('ola'))
        end
        end

    ```

    - Aqui crei um método para verificar se a palavra é palindroma e retorna `true` ou `false`. Após ser criado fiz uma `classe TestPalindromo` que herdou os métodos do `minitest`, dentro da `classe` criei um método para testa se as palavras são palindromos ou não. Aqui fiz 3 teste, 2 para funcionar 2 um para falhar. Passei o resultados no `assert_equal` e após passei os parâmetros.

---

## Testando uma Classe

> Nesse capítulo irei aborda como testa uma `classe` em si, já que no capítulo anterior fizemos isso com métodos. Nessa partei irei demonstrar como testa instâncias de uma `classe` ou objetos de uma `classe`.

---

- Criando a `classe` para o teste:

    ```ruby

        require 'minitest/autorun'

        class Pessoa

        attr_accessor :nome, :idade

        def initialize(nome, idade)
            @nome = nome
            @idade = idade 
        end

        def apresentar
            "Olá, sou #{nome} e tenho #{idade} anos"
        end

        end

    ```

    - Aqui criei uma `classe` chamada `pessoa` com 2 atríbutos, nome e idade. Ambos com `attr_acccessor`(permisão de leitura e eecrita). Dentro dessa `classe` criei um método para apresentar e consumir os abríbutos dela que foram nome e idade.

---

- Fazendo o primeiro caso de teste para a `classe`:

    ```ruby

        require 'minitest/autorun'

        class Pessoa

            attr_accessor :nome, :idade

            def initialize(nome, idade)
                @nome = nome
                @idade = idade 
            end

            def apresentar
                "Olá, sou #{nome} e tenho #{idade} anos"
            end

        end

        class TestPessoa < Minitest::Test

            def setup
                @p1 = Pessoa.new("João", 30)  
            end

            def test_initialize
                assert_equal("João", @p1.nome)
                assert_equal(30, @p1.idade)
            end

            def test_apresentar
                assert_equal("Olá, sou João e tenho 30 anos", @p1.apresentar)
            end

        end

    ```

    - Observa-se que utilizei um método diferente, chamado `setup`, o que ele faz? O método setup é um método especial em teste unitários, que é executado antes de cada caso de teste em uma `classe` de teste. Dito isso, criei a `classe` para o teste da nossa `classe pessoa`, dentro do método `setup` definir a nossa `instância` para a nossa `classe`. Criei um método com um `assert_equal` e com `setup` que está chamando a nossa `instância` para testa a nossa `classe`, passando o resultado e após chamando o nossos atríbutos. Após a chamada da nossos atríbutos chamei o nosso método presente em nossa `classe` para testa-lo no `assert_equal`, passando o resultado e após chamando o método para ser execultado.

    ---

    ![teste](/Banco%20de%20dados%20SQL/Assets/setup.png)

    - Observa-se que funcionou tudo perfeitamente, caso deseje ocassionar um erro basta em qualquer um dos nossos `assert_equal` o resultado esperado e após executa-lô.

---

## Usando Setup e TearDown

> O método `teardown` em programação Ruby é um `hook` de ciclo de vida executado automaticamente após a conclusão de cada teste individual em um `framework` de `testes automatizados`. Ele serve primordialmente para limpar o ambiente de execução. Isso garante o isolamento entre os testes e evita o vazamento de dados de teste (`test data leakage`). Vamos passar a utilizar mais o `setup` no exemplo que irei abordar, fazendo a junção de ambos os métodos. 

---

- Exemplo do carrinho de compra:

    ```ruby

        require 'minitest/autorun'

        class ShoppingCart
            
            def initialize
                @items = {}
            end

            def add_item(product, quantity)
                @items[product] =  quantity
            end

            def remove_item(product)
                @items.delete(product)
            end

            def item_count
                @items.values.sum
            end

            def total_price
                product_price = {'Headphones' => 30, 'Book' => 10}
                @items.sum {|product, quantity| quantity * product_price[product]}
            end

            def clear 
                @items = {}
            end

        end

    ```

    - A `classe` `ShopppingCart` foi criada, irei depurarar a mesma para explicar o que cada método faz.

        - Método `add_item`:

            - Esse método pega o nosso obejto `@items` e adiciona itens na chave `product` do hash, o `quantity` serve para dizer q à quantidade dos itens da chave.

        ---

        - Método `remove_item`:

            - E método server para retirar itens do nosso hash. Ele funciona da seguinte forma, chama o nosso objeto `@items` e usa o `.delete` para remover o item que foi passado em `product`.

        ---

        - Método `item_count`:

            - Esse método tem a função de fazer o somatório de todos os valores dos itens que se encontram no hash.

        ---

        - Método `def total_price`:

            - O método tem como função fazer a soma do hash do nosso objeto `@items` e múltiplicar a sua quantidade de itens pelo o preço do produto dentro do nossa chave `product`. 

        ---

        - Método `clear`

            - Serve para limpar o nosso hash do objeto `@items`.

        --- 

---

- Irei criar a `classe TestShoppingCart` para realizar os teste em nossa `classe ShoppingCart`, utilizando o `minitest`.

    ```ruby

        class TestShoppingCart < Minitest::Test

            def setup 
            @cart = ShoppingCart.new
            end

            def teardown
            @cart.clear
            end

            def test_add_item
            @cart.add_item('laptop', 1)
            assert_equal(1, @cart.item_count, "Falha ao adicionar item ao carrinho")
            end

            def test_remove_item
            
            end

        end

    ```