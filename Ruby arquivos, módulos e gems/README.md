# Trabalhando com arquivos, módulos e gems.

## Índice

1. [Arquivos](#manipulação-de-arquivos-no-ruby)
2. [Módulos](#módulos)
3. [Gems](#gems)


---

## Introdução.

No Ruby, arquivos são manipulados para leitura, escrita e atualização de dados usando classes como `File` e `IO`.

Os módulos ajudam na organização e reutilização de código, funcionando como bibliotecas. Eles podem conter métodos e constantes, permitindo a implementação de `mixins` com `include` e `extend`.

Já as gems são bibliotecas externas que ampliam as funcionalidades do Ruby. Instaladas via `gem install` nome_da_gem, podem ser usadas com require.

- **Arquivos, módulos, gems:**
  - Manipulação de arquivos.
  - Módulos úteis.
  - Introdução a gems.

---

## Manipulação de arquivos no Ruby.

Aqui damos inicios a manipulação de arquivo com ruby, iremos iniciar de uma formas simples lendo arquivos com `File.open`.

#### Lendo arquivos com Ruby.

Primeira alternativa para ler um arquivo.
```ruby
# <File.open> é um módulo que trabalha com arquivos. Quando trabalhamos com arquivos, temos 2 entradas, input e output == entrada de dados e saída de dados.

movies = File.open("../Manipulação de arquivos/Text/anime.txt") 
puts movies

# Para que serve o <.class>? Serve para confirmar que movies é realmente um objeto da classe file, assim confirmando que é um arquivo.

puts movies.class 

# Utilizamos <each> para ler cada linha do arquivo.
# <line> representa cada linha lida e <.strip> remove os espaços em branco antes e depois do texto. O <puts> imprime a linha no console.

movies.each { |line| puts line.strip } 

```

Segunda alternativa para ler um arquivo.
```ruby

# Nossa variável que recebe o arquivo que vai ser lido.

file_path = "../Manipulação de arquivos/Text/anime.txt" 

# Abrimos o arquivo com <File.open>, passamos a nossa variável, em seguida útilizamos o <"r"> para indicar que é <READ == leitura>.

File.open(file_path, "r") do |file| 
  file.each_line { |line| puts line.strip unless line.strip.empty? } 
  end

# Utilizamos o <each> para percorrer o arquivo linha a linha, utilizamos o <line> para representar cada linha linda.
# O <.strip> para remover espaços extras no início e no final da linha, <unless> verifica se a linha não está vazia <line.strip.empty?>. Se a linha NÃO estiver vazia, ela é imprimida no terminal.

```
#### Escrevendo arquivos com Ruby.

```ruby

# Aqui utilizamos o <File.open> para abrir o arquivo. Como estamos trabalhando com modo de escrita, não precisamo que o arquivos exista, já que iremos criar o mesmo.

File.open("../Manipulação de arquivos/Text/courses.txt", "w") do |file|
 # Arquivo <data> não existe AINDA. Quando passamo o <"w"> significa que quero trabalha com <write == escrever> no ruby. 

  file.puts "Curso de OnRails" # Criamos um bloco com <do> passamos nos pipes <||> nossa variável que é <|file| e chamamos os arquivos de texto que serão criados.

  file.write "Curso de Gems" # Diferença entre o <puts> e o <write> é meramente uma quebra de linha, já que o <puts> possuí nativamente a quebra de linha e o <write> não.

  file.puts "Curso de UML"
end

```

#### Renomeando arquivo com Ruby.

```ruby

# Para renomear o nome do arquivo utilizamos <File.rename>. Passamos o arquivo e nome com o caminho, depois passamos o caminho com o novo nome do arquivo.

File.rename("../Manipulação de arquivos/Text/cursos.txt", "../Manipulação de arquivos/Text/courses.txt") 

```

#### Deletando arquivos com Ruby.

```ruby
# Para excluir arquivos temos que verificar se ele ao menos existe. Para isso usamos uma condicional para verificar se ele existe ou não.

if File.exist?("../Manipulação de arquivos/Text/cursosTI.txt") # Aqui verificamos se ele existe.

  File.delete("../Manipulação de arquivos/Text/cursosTI.txt") # Como o arquivo em si não existe, ele nem entra na condição, não aparece nada no terminal.
end

```

#### Argumentos com Ruby.

##### Passando argumentos.

```ruby

# Para ver o tipo do arg utilizamos o <.class>, para isso acontece você deve passar o argumento direto no terminal.

ARGV.each { |arg| puts arg }

# Vamos colocar um "óla" no terminal, a saída é exatamente assim <óla> quebra a linha e vem o tipo <string>. No argv, por padrão tudo vem em STRING.

ARGV.each { |arg| puts arg.class } 

```

##### Potência de um número com ARGV.

```ruby

# Criamos um bloco com o <do>, passamos nossa variável com os pipes <|arg|>.

ARGV.each do |arg| 

# Convertendo o <arg> para inteiro, já que o <ARGV> por padrão é string, atribuímos o <arg.to_i> à variável <pot>.

  pot = arg.to_i ** 2 

# Aqui iremos ao terminal e passar o argumento no terminal, como visto acima. Passaremos um 4, isso deve retorna um 16 no terminal.

  puts "Potência do número #{arg} é #{pot}" 
  
end

```

## Módulos.

## Módulos úteis com ruby.
Aqui damos inicios a utilizar módulos como `Math`, `HTTP`, `URI` e `CSV`. 

### Utilizando o módulo `Math`.

#### Para ver o tipo, no caso do <Math> ele é tipo módulo.

```ruby

puts Math.class # Retorna o tipo no terminal.

# Para ver todo os metódos que tem dentro do <Math> utilizamos <.methods> e <.sort> para ordena os metódos.

```

### Módulo para ver a raiz quadrada.

```ruby

puts Math.sqrt(4) # Passamos entre () o número desejado para a raiz quadrada.

```

### Metódo para ver Pi.

#### Quando passamos <::>, siginifica que estamos querendo utilizar um módulos com os primeiros <:> e no segundo a referência a classe que está dentro do módulo que vamos usar, que no caso seria <PI>.

```ruby 

puts Math::PI # Retorna o valor de PI no terminal.

```

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

#### Criando instância HTTP e fazendo a requisição.

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

##### Esqueci de mencionar que podemos ter uma classe dentro de um módulo perfeitamente. Sobre <url.host> retorna o nome do host (domínio ou endereço IP) do servidor ao qual você deseja se conectar. Sobre <url.port> retorna o número da porta que será usada para a conexão. Se a porta não for especificada na URL, o valor padrão será 80 para HTTP e 443 para HTTPS.

```ruby

http = Net::HTTP.new(url.host, url.port) # Vamos insância a nossa classe <HTTP> e vamos passar um parâmetro para a mesma.

# Se for necessários utilizar o HTTPS, vamos adicionar isso a seguir.
# Essa linha configura automaticamente o cliente HTTP para usar SSL/TLS apenas quando a URL começa com https. 

http.use_ssl = (url.scheme == 'https') 

```

#### Sobre o uso de <https.use_ssl> e <url.scheme>.

#### url.scheme:
####  O método scheme retorna o protocolo da URL, que pode ser http ou https.
#### url.scheme == 'https':
#### Essa é uma comparação que verifica se o protocolo da URL é https.
#### Se for https, a expressão retorna true.
#### Se for http, a expressão retorna false.
#### http.use_ssl = (url.scheme == 'https'):
#### Aqui, o valor da comparação (true ou false) é atribuído à propriedade use_ssl do objeto http.
#### Se a URL for https, use_ssl será true, e o cliente HTTP usará SSL/TLS para criptografar a conexão.
#### Se a URL for http, use_ssl será false, e a conexão será feita sem criptografia.

### Enviando uma requisição para o HTTP.

```ruby

# Consultando dados com o metódo GET. Utilizamos o <request> para fazer a requisição.

request = Net::HTTP::Get.new(url) # Aqui estamos fazendo uma requisição para nossa <url> e essa requisição é do tipo <Get>.

```

### Utilizamos o <response> para fazer a requisição.

##### Adicionamos uma condicional para verificar se a resposta vai ser em array, depois passamos os parâmentros para verificar se a reposta foi um sucesso. Status code, 100~500. 100=Código de informação. 200=Código de sucesso. 300=Código de redirecionamento. 400=Código de erro no lado do cliente. 500=Código de erro no lado do servidor.

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

### Importando o módulo.

```ruby

require 'csv' # Utilizamos o <require> para importação de módulos.

```

### Ecrevendo dados em CSV.

#### Aqui vamos abri o arquivo, algo parecido com o <File.open>, esse aqui não precisa existir o módulo funciona, no caso da leitura, se for escrita é obrigatório que ele exista.

```ruby

# Aqui vamos escreve utilizando o <CSV.open>, passamos o <"w"> que significa que vamos escrever, criamos um bloco com <do> o bloco vai ser como parâmetro nossa variável <|csv|>.

CSV.open("../Manipulação de arquivos/Csv/exemplo.csv", "w") do |csv| 
    csv << ["Nome", "idade", "cidade"] # Estamos escrevendo no arquivo utilizando o <Binary left_shift>.
    csv << ["Shademan", "90", "?"]
    csv << ["Rockman", "22", "NetCity"]
    csv << ["Protoman" "24", "NetCity"]
end

```

### Lendo ddos em CSV.

#### Inicializamos o método para ler linha a linha com  metódo <.foreach>, passasamos o caminho.

```ruby

CSV.foreach("../Manipulação de arquivos/Csv/exemplo.csv", headers: true) do |row| # Esta opção indica que a primeira linha do arquivo CSV contém os cabeçalhos (nomes das colunas).
    nome = row ["Nome"]
    idade = row ["idade"]
    cidade = row ["cidade"]
    puts "Nome: #{nome}, idade: #{idade}, cidade: #{cidade}"
end

```

## Gems.

### Para instalação da gem no terminal.

#### Utilizei o faker como exemplo de gems, mais podemos por o nome de outra gem caso queira algo diferente.

```ruby

gem install `faker`

```

### Utilização da gems via `gemfile`.

#### Para utilizamos às gems, estamos importando.

```ruby

source "https://rubygems.org"

```

#### Aqui importamos com <gem> o nome da nossa gem entre aspas <"faker"> e posteriomente a sua versão nesse seguimento <"~> 3.2.0">.

```ruby

gem "faker", "~> 3.2.0" 

```

### Após a configuração do arquivo `gemfile`.

#### Para funcionar utlizer esse comando no terminal `bundle install` para instalação da gem. Atente-se ao seu diretório, para o `bundle install` funcionar, tem que está no mesmo diretório da sua `gemfile`.

```ruby

bundle install

```
