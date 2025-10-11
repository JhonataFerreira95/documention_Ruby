# Trabalhando com arquivos, módulos e gems.

## Índice

1. [Arquivos](#manipulação-de-arquivos-no-ruby)
2. [Módulos](#módulos)
3. [Gems](#gems)


---

## Introdução.

- No Ruby, arquivos são manipulados para leitura, escrita e atualização de dados usando classes como `File` e `IO`.

- Os módulos ajudam na organização e reutilização de código, funcionando como bibliotecas. Eles podem conter métodos e constantes, permitindo a implementação de `mixins` com `include` e `extend`.

- Já as gems são bibliotecas externas que ampliam as funcionalidades do Ruby. Instaladas via `gem install` nome_da_gem, podem ser usadas com require.

- **Arquivos, módulos, gems:**
  - Manipulação de arquivos.
  - Módulos úteis.
  - Introdução a gems.

---

## Manipulação de arquivos no Ruby.

- Aqui damos inicios a manipulação de arquivo com ruby, iremos iniciar de uma formas simples lendo arquivos com `File.open`.

  - Lendo arquivos com Ruby.

  - Primeira alternativa para ler um arquivo.

  - Exemplo na prática:
  

      ```ruby

      movies = File.open("../Manipulação de arquivos/Text/anime.txt") 
      puts movies

      puts movies.class 

      movies.each { |line| puts line.strip } 

      ```
  
  - Explicação do script:

    - `File.open` é um módulo que trabalha com arquivos. Quando trabalhamos com arquivos, temos 2 entradas, input e output == entrada de dados e saída de dados.

    - Para que serve o `.class`? Serve para confirmar que movies é realmente um objeto da classe file, assim confirmando que é um arquivo

    - Utilizamos `each` para ler cada linha do arquivo.

    - `line` representa cada linha lida e `.strip` remove os espaços em branco antes e depois do texto. O `puts` imprime a linha no console.

### Segunda alternativa para ler um arquivo.

- Há outra maneira de ler arquivos em `ruby`.

- Exemplo na prática:

    ```ruby

    file_path = "../Manipulação de arquivos/Text/anime.txt" 

    File.open(file_path, "r") do |file| 
      file.each_line { |line| puts line.strip unless line.strip.empty? }
    end

    ```

  - Explicação do script:

    - Nossa variável que recebe o arquivo que vai ser lido.

    - Abrimos o arquivo com `File.open`, passamos a nossa variável, em seguida útilizamos o `"r"` para indicar que é `READ == leitura`.

    - Utilizamos o `each` para percorrer o arquivo linha a linha, utilizamos o `line` para representar cada linha linda.

    - O `.strip` para remover espaços extras no início e no final da linha, `unless` verifica se a linha não está vazia `line.strip.empty?`. Se a linha NÃO estiver vazia, ela é imprimida no terminal.

### Escrevendo arquivos com Ruby.

- Também podemos escrever em arquivos com `ruby`.

- Exemplo na prática: 

    ```ruby

    File.open("../Manipulação de arquivos/Text/courses.txt", "w") do |file| 

      file.puts "Curso de OnRails"

      file.write "Curso de Gems"

      file.puts "Curso de UML"

    end

    ```

  - Explicação do script:

    - Aqui utilizamos o `File.open` para abrir o arquivo. Como estamos trabalhando com modo de escrita, não precisamo que o arquivos exista, já que iremos criar o mesmo.

    - Arquivo `data` não existe AINDA. Quando passamo o `"w"` significa que quero trabalha com `write == escrever` no ruby.

    - Criamos um bloco com `do` passamos nos pipes `||` nossa variável que é `|file|` e chamamos os arquivos de texto que serão criados.

    - Diferença entre o `puts` e o `write` é meramente uma quebra de linha, já que o `puts` possuí nativamente a quebra de linha e o `write` não.


### Renomeando arquivo com Ruby.

- Renomeando arquivos com `ruby` de forma simples e rápida.

- Exemplo na prática: 

    ```ruby

    File.rename("../Manipulação de arquivos/Text/cursos.txt", "../Manipulação de arquivos/Text/courses.txt") 

    ```
  
  - Explicando o script:

    - Para renomear o nome do arquivo utilizamos `File.rename`. Passamos o arquivo e nome com o caminho, depois passamos o caminho com o novo nome do arquivo.

### Deletando arquivos com Ruby.

- Deletando os arquivos em `ruby` de forma rápida verificando no diretório.

- Exemplo na prática: 

    ```ruby

    if File.exist?("../Manipulação de arquivos/Text/cursosTI.txt") 

      File.delete("../Manipulação de arquivos/Text/cursosTI.txt")

    end

    ```

  - Explicando o script:

    - Para excluir arquivos temos que verificar se ele ao menos existe. Para isso usamos uma condicional para verificar se ele existe ou não.

    - Aqui verificamos se ele existe.

    - Como o arquivo em si não existe, ele nem entra na condição, não aparece nada no terminal.

### Argumentos com Ruby.

- Passando argumentos com `ruby` com `argv`.

- Exemplo na prática:

    ```ruby

    ARGV.each { |arg| puts arg }

    ARGV.each { |arg| puts arg.class } 

    ```

  - Explicando script:

    -  Para ver o tipo do arg utilizamos o `.class`, para isso acontece você deve passar o argumento direto no terminal.

    - Vamos colocar um `"óla"` no terminal, a saída é exatamente assim `óla` quebra a linha e vem o tipo `string`. No argv, por padrão tudo vem em STRING.

### Potência de um número com ARGV.

- Passando potência de número

- Exemplo na prática:

    ```ruby

    ARGV.each do |arg|
      pot = arg.to_i ** 2 
      puts "Potência do número #{arg} é #{pot}" 
    end

    ```

  - Explicando o script:

    - Criamos um bloco com o `do`, passamos nossa variável com os pipes `|arg|`.

    - Convertendo o `arg` para inteiro, já que o `ARGV` por padrão é string, atribuímos o `arg.to_i` à variável `pot`.

    - Aqui iremos ao terminal e passar o argumento no terminal, como visto acima. Passaremos um 4, isso deve retorna um 16 no terminal.


## Módulos.

- Módulos úteis com Ruby.

  - Aqui damos inicios a utilizar módulos como `Math`, `HTTP`, `URI` e `CSV`. 

    - Utilizando o módulo `Math`.

  - Para ver o tipo, no caso do `Math` ele é tipo módulo.

  - Exemplo na prática:

    ```ruby

    puts Math.class 

    ```

    - Explicando script:

      - Retorna o tipo no terminal.

      - ara ver todo os metódos que tem dentro do `Math` utilizamos `.methods` e `.sort` para ordena os metódos.

  - Módulo para ver a raiz quadrada.

  - Exemplo na prática:

    ```ruby

    puts Math.sqrt(4) 

    ```

    - Explicando script:

      - Passamos entre `()` o número desejado para a raiz quadrada.

### Metódo para ver Pi.

- Quando passamos `::`, siginifica que estamos querendo utilizar um módulos com os primeiros `:` e no segundo a referência a classe que está dentro do módulo que vamos usar, que no caso seria `PI`.

- Exemplo na prática:

    ```ruby 

    puts Math::PI 

    ```

    - Explicando o script:

      - Retorna o valor de PI no terminal.


### Cálculo a área de um círculo.

```ruby

def calcular_area(raio)
    return Math::PI * raio ** 2 # cálculo para calcular a área de um círculo.
end

```

### Cáculo perímetro de um círculo.


```ruby

def calcular_perimetro(raio)
    return 2 * Math::PI * raio
end

```

### Entrada de dados.

```ruby

puts "Digite o raio do círculo: "
raio = gets.chomp.to_f # Para atualizar a entrada dizendo que o valor digitado é floot com <.to_f>.

```

### Execução da função.

```ruby

area = calcular_area(raio) # Aqui atribúimos a entrada do usuário para <area>
perimetro = calcular_perimetro(raio) # Aqui atribúimos a entrada do usuário para <perimetro>

```

### exibindo os resultados.

```ruby

puts "Área do círculo com raio #{raio} é #{area.round(2)}" # Exibição com duas casa decímais com <.round(2)>.
puts "Perímetro do círculo com raio #{raio} é #{perimetro.round(2)}" # Exibição com duas casa decímais com <.round(2)>.

```
### Utilizando módulo `http` e `uri`.

- Criando instância HTTP e fazendo a requisição.

```ruby

# Criando instância HTTP e fazendo a requisição.

require 'uri' # Para fazer a requisição do módulo <URI>.
require 'net/http' # Para fazer a requisição do módulo <HTTP>.

```

#### Para enviar uma requisição para internet. Para fazer a requisição, precisamos de uma url. Essa url é padronizada pela <URI>.

```ruby

url = URI.parse('https://www.google.com') # Para a requisição utilizamos o <URI> e para permissão de endereço utilizamos o <.parse> para passar o link do site onde faremos a requisição.
# Retorna informações que pedimos na requisição do site, que será o seu domínio.

puts url 

# Retorna o tipo da <url> que será <URI::HTTP>, já que estamos utilizando protocolo HTTPS.

puts url.class 

```

#### Enviando requisição HTTP.

  - Esqueci de mencionar que podemos ter uma classe dentro de um módulo perfeitamente. Sobre `url.host` retorna o nome do host (domínio ou endereço IP) do servidor ao qual você deseja se conectar. Sobre `url.port` retorna o número da porta que será usada para a conexão. Se a porta não for especificada na URL, o valor padrão será 80 para HTTP e 443 para HTTPS.

```ruby

http = Net::HTTP.new(url.host, url.port) # Vamos insância a nossa classe <HTTP> e vamos passar um parâmetro para a mesma.

# Se for necessários utilizar o HTTPS, vamos adicionar isso a seguir.
# Essa linha configura automaticamente o cliente HTTP para usar SSL/TLS apenas quando a URL começa com https. 

http.use_ssl = (url.scheme == 'https') 

```

- Sobre o uso de <https.use_ssl> e <url.scheme>.

  - url.scheme:
    - O método scheme retorna o protocolo da URL, que pode ser http ou https.
    - url.scheme == 'https':
    - Essa é uma comparação que verifica se o protocolo da URL é https.
    - Se for https, a expressão retorna true.
    - Se for http, a expressão retorna false.
    - http.use_ssl = (url.scheme == 'https'):
    - Aqui, o valor da comparação (true ou false) é atribuído à propriedade use_ssl do objeto http.
    - Se a URL for https, use_ssl será true, e o cliente HTTP usará SSL/TLS para criptografar a conexão.
    - Se a URL for http, use_ssl será false, e a conexão será feita sem criptografia

### Enviando uma requisição para o HTTP.

```ruby

# Consultando dados com o metódo GET. Utilizamos o <request> para fazer a requisição.

request = Net::HTTP::Get.new(url) # Aqui estamos fazendo uma requisição para nossa <url> e essa requisição é do tipo <Get>.

```

### Utilizamos o <response> para fazer a requisição.

  - Adicionamos uma condicional para verificar se a resposta vai ser em array, depois passamos os parâmentros para verificar se a reposta foi um sucesso. Status code, 100~500. 100=Código de informação. 200=Código de sucesso. 300=Código de redirecionamento. 400=Código de erro no lado do cliente. 500=Código de erro no lado do servidor.

```ruby

response = http.request(request) # faz uma solicitação <HTTP> usando um objeto <request> e armazena a resposta na variável <response>.

if response.is_a?(Net::HTTPSuccess) # Estamos verificando se ouver código de sucesso ou seja, código 200. Quando o servidor vai responder para o cliente, ele pode responde de 5 formas.
  puts "Status #{response.code} #{response.message}" # Caso esteja tudo ok, vai retorna o código e a messagem.
  puts response.body # Aqui vamos retorna o corpo dos dados.
else
  puts "A requisição falhou com status #{response.code}" # Aqui vamos utilizar o else para retorna a falha do status code.
end

```

### Utilizando módulo `CSV`.

- Importando o módulo para escrever em `CSV`

    ```ruby

    require 'csv' 

    ```
  
  - Explicação do script

    - Utilizamos o `require` para importação de módulos.

### Ecrevendo dados em CSV.

- Aqui vamos abri o arquivo, algo parecido com o `File.open`, esse aqui não precisa existir o módulo funciona, no caso da leitura, se for escrita é obrigatório que ele exista.

- Exemplo na prática: 

    ```ruby

    CSV.open("../Manipulação de arquivos/Csv/exemplo.csv", "w") do |csv| 
        csv << ["Nome", "idade", "cidade"] 
        csv << ["Shademan", "90", "?"]
        csv << ["Rockman", "22", "NetCity"]
        csv << ["Protoman" "24", "NetCity"]
    end

    ```
  
  Explicação script:

    - Aqui vamos escreve utilizando o `CSV.open`, passamos o `"w"` que significa que vamos escrever, criamos um bloco com `do` o bloco vai ser como parâmetro nossa variável `|csv|`.

    - Estamos escrevendo no arquivo utilizando o `Binary left_shift`.

### Lendo ddos em CSV.

- Inicializamos o método para ler linha a linha com  metódo `.foreach`, passasamos o caminho.

- Exemplo na prática:

    ```ruby

    CSV.foreach("../Manipulação de arquivos/Csv/exemplo.csv", headers: true) do |row| 
        nome = row ["Nome"]
        idade = row ["idade"]
        cidade = row ["cidade"]
        puts "Nome: #{nome}, idade: #{idade}, cidade: #{cidade}"
    end

    ```

  - Explicando script:

    - Esta opção indica que a primeira linha do arquivo CSV contém os cabeçalhos (nomes das colunas).

## Gems.

### Para instalação da gem no terminal.

- Utilizei o faker como exemplo de gems, mais podemos por o nome de outra gem caso queira algo diferente.

```ruby

gem install `faker`

```

### Utilização da gems via `gemfile`.

- Para utilizamos às gems, estamos importando.

```ruby

source "https://rubygems.org"

```

- Aqui importamos com `gem` o nome da nossa gem entre aspas `"faker"` e posteriomente a sua versão nesse seguimento `"~> 3.2.0"`.

```ruby

gem "faker", "~> 3.2.0" 

```

### Após a configuração do arquivo `gemfile`.

- Para funcionar utlizer esse comando no terminal `bundle install` para instalação da gem. Atente-se ao seu diretório, para o `bundle install` funcionar, tem que está no mesmo diretório da sua `gemfile`.

```ruby

bundle install

```
