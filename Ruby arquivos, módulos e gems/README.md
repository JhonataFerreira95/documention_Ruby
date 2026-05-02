# Trabalhando com Arquivos, Módulos e Gems

## Índice

1. [Arquivos](#manipulação-de-arquivos-no-ruby)
2. [Módulos](#módulos)
3. [Gems](#gems)

---

## Introdução

- No Ruby, arquivos são manipulados para leitura, escrita e atualização de dados usando classes como `File` e `IO`.

- Os módulos ajudam na organização e reutilização de código, funcionando como bibliotecas internas. Eles podem conter métodos e constantes, permitindo a implementação de `mixins` com `include` e `extend`.

- Já as gems são bibliotecas externas que ampliam as funcionalidades do Ruby. São instaladas via `gem install nome_da_gem` e carregadas no código com `require`.

**Tópicos abordados:**
- Manipulação de arquivos
- Módulos úteis da biblioteca padrão
- Introdução a gems

---

## Manipulação de Arquivos no Ruby

> Em Ruby, toda operação com arquivos passa pela classe `File` (ou `IO`, sua classe pai). O conceito central é o de **modo de acesso**: ao abrir um arquivo, informamos se queremos ler (`"r"`), escrever (`"w"`), ou ambos — o que define o que é permitido fazer com aquele arquivo.

### Primeira alternativa para ler um arquivo

```ruby
  movies = File.open("../Manipulação de arquivos/Text/anime.txt")
  puts movies

  puts movies.class # Confirma que movies é um objeto da classe File

  movies.each { |line| puts line.strip } # Itera linha a linha e imprime sem espaços extras
```

**Explicação do script:**

- `File.open` abre o arquivo no caminho informado e retorna um objeto da classe `File`. Toda interação com o arquivo acontece através desse objeto.
- `.class` confirma que `movies` é de fato um objeto do tipo `File` — útil para depuração.
- `each` percorre o arquivo linha a linha. `line` representa cada linha lida, e `.strip` remove espaços em branco no início e no fim. O `puts` imprime o resultado no terminal.

---

### Segunda alternativa para ler um arquivo

> Esta forma é mais recomendada no dia a dia porque usa um **bloco** — o arquivo é fechado automaticamente ao final do bloco, evitando vazamentos de recursos (o equivalente a um `try/finally` em outras linguagens).

```ruby
file_path = "../Manipulação de arquivos/Text/anime.txt" # Variável que armazena o caminho do arquivo

File.open(file_path, "r") do |file| # "r" indica modo READ (leitura)
  file.each_line { |line| puts line.strip unless line.strip.empty? }
end
```

**Explicação do script:**

- `file_path` armazena o caminho do arquivo — boa prática para evitar repetição.
- `File.open` com `"r"` abre o arquivo em modo leitura. O bloco `do |file|` garante que o arquivo será fechado automaticamente ao terminar.
- `each_line` percorre o arquivo linha a linha. `.strip` remove espaços extras no início e no fim.
- `unless line.strip.empty?` garante que linhas vazias não sejam impressas — só exibe a linha se ela **não** estiver vazia.

---

### Escrevendo arquivos com Ruby

> No modo escrita (`"w"`), o arquivo não precisa existir previamente — o Ruby o cria automaticamente. **Atenção:** se o arquivo já existir, seu conteúdo será **sobrescrito** completamente.

```ruby
File.open("../Manipulação de arquivos/Text/courses.txt", "w") do |file| # "w" indica modo WRITE (escrita)

  file.puts "Curso de OnRails"  # puts adiciona uma quebra de linha automática ao final

  file.write "Curso de Gems"    # write NÃO adiciona quebra de linha automática

  file.puts "Curso de UML"

end
```

**Explicação do script:**

- `File.open` com `"w"` abre (ou cria) o arquivo em modo escrita. O bloco `do |file|` encapsula todas as operações.
- O arquivo `courses.txt` **não precisa existir** — o modo `"w"` o cria automaticamente.
- A diferença entre `puts` e `write` é a quebra de linha: `puts` adiciona `\n` ao final automaticamente, enquanto `write` escreve exatamente o que foi passado, sem adicionar nada.

---

### Renomeando arquivo com Ruby

> `File.rename` é uma operação atômica — move e renomeia o arquivo em uma única instrução, sem necessidade de copiar e deletar manualmente.

```ruby
File.rename(
  "../Manipulação de arquivos/Text/cursos.txt",   # Caminho atual (nome original)
  "../Manipulação de arquivos/Text/courses.txt"   # Novo caminho (novo nome)
)
```

**Explicação do script:**

- `File.rename` recebe dois argumentos: o caminho atual do arquivo e o novo caminho/nome desejado. Simples e direto.

---

### Deletando arquivos com Ruby

> Antes de deletar um arquivo, é uma boa prática verificar se ele existe com `File.exist?` — caso contrário, `File.delete` levantaria uma exceção em tempo de execução.

```ruby
if File.exist?("../Manipulação de arquivos/Text/cursosTI.txt") # Verifica se o arquivo existe antes de tentar deletar

  File.delete("../Manipulação de arquivos/Text/cursosTI.txt") # Só deleta se existir

end
```

**Explicação do script:**

- `File.exist?` retorna `true` ou `false` — usamos isso como guarda para evitar erros.
- Se o arquivo não existir, o bloco `if` não é executado e nada aparece no terminal. Comportamento seguro e esperado.

---

### Argumentos com Ruby (ARGV)

> `ARGV` é uma constante do Ruby que captura os argumentos passados diretamente no terminal ao executar o script. É equivalente ao `process.argv` no Node.js. Por padrão, **todos os argumentos chegam como String**.

```ruby
ARGV.each { |arg| puts arg }       # Imprime cada argumento passado no terminal

ARGV.each { |arg| puts arg.class } # Exibe o tipo de cada argumento — sempre String por padrão
```

**Explicação do script:**

- `ARGV` é um Array que contém todos os argumentos passados ao rodar o script no terminal (ex: `ruby script.rb hello 42`).
- `.class` confirma que mesmo números passados como argumento chegam como `String` — é necessário converter explicitamente caso queira operar numericamente.

---

### Potência de um número com ARGV

> Aqui combinamos `ARGV` com conversão de tipos e interpolação de strings para criar um mini-calculador de potência via terminal.

```ruby
ARGV.each do |arg|
  pot = arg.to_i ** 2  # Converte o argumento para inteiro e calcula o quadrado
  puts "Potência do número #{arg} é #{pot}" # Exibe o resultado interpolado
end
```

**Explicação do script:**

- Criamos um bloco com `do`, recebendo cada argumento em `|arg|`.
- Como `ARGV` é sempre String, usamos `.to_i` para converter antes de operar matematicamente. `** 2` eleva ao quadrado.
- Ao passar `4` no terminal (`ruby script.rb 4`), o retorno será `Potência do número 4 é 16`.

---

## Módulos

> Módulos são "namespaces" que agrupam métodos e constantes relacionados. A biblioteca padrão do Ruby já vem com módulos prontos como `Math`, `URI`, `CSV` e outros — sem necessidade de instalar gems.

### Utilizando o módulo `Math`

```ruby
puts Math.class # Retorna "Module" — confirma que Math é um módulo, não uma classe
```

> Para listar todos os métodos disponíveis no `Math`, podemos usar `.methods.sort` — o `.sort` ordena alfabeticamente para facilitar a leitura.

---

### Raiz quadrada com `Math.sqrt`

```ruby
puts Math.sqrt(4) # Retorna 2.0 — o número passado entre () é o valor a ser calculado
```

**Explicação do script:**

- `Math.sqrt` calcula a raiz quadrada do número informado entre parênteses. O resultado sempre é um `Float`.

---

### Método para acessar Pi

> O operador `::` é o **operador de escopo** do Ruby — usado para acessar constantes ou classes definidas dentro de um módulo. `:Math` acessa o módulo, e `::PI` acessa a constante `PI` definida dentro dele.

```ruby
puts Math::PI # Retorna o valor de Pi com alta precisão: 3.141592653589793
```

---

### Calculando a área de um círculo

```ruby
def calcular_area(raio)
    return Math::PI * raio ** 2 # Fórmula da área do círculo: π * r²
end
```

**Explicação do script:**

- Método que recebe o `raio` como parâmetro e aplica a fórmula matemática usando a constante `Math::PI`.

---

### Calculando o perímetro de um círculo

```ruby
def calcular_perimetro(raio)
    return 2 * Math::PI * raio # Fórmula do perímetro: 2 * π * r
end
```

**Explicação do script:**

- Mesmo padrão do método anterior, agora aplicando a fórmula do perímetro (circunferência) do círculo.

---

### Entrada de dados e execução dos cálculos

```ruby
puts "Digite o raio do círculo: "
raio = gets.chomp.to_f # Captura entrada do usuário e converte para Float (número decimal)
```

```ruby
area = calcular_area(raio)       # Atribui o resultado do cálculo de área à variável
perimetro = calcular_perimetro(raio) # Atribui o resultado do cálculo de perímetro à variável
```

```ruby
puts "Área do círculo com raio #{raio} é #{area.round(2)}"           # Exibe com 2 casas decimais
puts "Perímetro do círculo com raio #{raio} é #{perimetro.round(2)}" # Exibe com 2 casas decimais
```

**Explicação do script:**

- `.to_f` converte a entrada (String) para Float, necessário para os cálculos com `Math::PI`.
- `.round(2)` arredonda o resultado para duas casas decimais — garante uma exibição limpa e legível.

---

### Utilizando os módulos `URI` e `net/http`

> `URI` e `net/http` são módulos da biblioteca padrão do Ruby para trabalhar com requisições HTTP — sem precisar de gems externas. É o equivalente ao módulo `http` nativo do Node.js.

```ruby
require 'uri'      # Carrega o módulo responsável por parsear e validar URLs
require 'net/http' # Carrega o módulo responsável por realizar requisições HTTP
```

---

### Criando e validando a URL

```ruby
url = URI.parse('https://www.google.com') # Parseia a string e cria um objeto URI estruturado

puts url       # Exibe a URL formatada
puts url.class # => URI::HTTPS — confirma o tipo do objeto
```

**Explicação do script:**

- `URI.parse` transforma uma string de URL em um objeto estruturado com propriedades acessíveis como `.host`, `.port` e `.scheme` — facilitando o uso nas requisições.

---

### Criando a conexão HTTP

> `url.host` retorna o domínio ou IP do servidor. `url.port` retorna a porta — `80` por padrão para HTTP e `443` para HTTPS.

```ruby
http = Net::HTTP.new(url.host, url.port) # Instancia o cliente HTTP com host e porta extraídos da URL

http.use_ssl = (url.scheme == 'https') # Ativa SSL automaticamente se a URL usar HTTPS
```

**Explicação do script:**

- `Net::HTTP.new` cria uma instância do cliente HTTP — aqui vemos um exemplo de **classe dentro de um módulo** (`HTTP` dentro de `Net`).
- `url.scheme` retorna o protocolo da URL (`"http"` ou `"https"`). A comparação `== 'https'` retorna `true` ou `false`, que é atribuído a `use_ssl` — ativando ou não a criptografia SSL/TLS automaticamente.

---

### Enviando a requisição e tratando a resposta

> Os status codes HTTP seguem um padrão universal: `1xx` = informação, `2xx` = sucesso, `3xx` = redirecionamento, `4xx` = erro do cliente, `5xx` = erro do servidor.

```ruby
# Criando a requisição do tipo GET para a URL informada
request = Net::HTTP::Get.new(url) # Net::HTTP::Get representa uma requisição HTTP do tipo GET
```

```ruby
response = http.request(request) # Executa a requisição e armazena a resposta

if response.is_a?(Net::HTTPSuccess) # Verifica se o status code está na faixa de sucesso (2xx)
  puts "Status #{response.code} #{response.message}" # Exibe o código e mensagem do status (ex: 200 OK)
  puts response.body                                  # Exibe o corpo da resposta (HTML, JSON, etc.)
else
  puts "A requisição falhou com status #{response.code}" # Exibe o código de erro em caso de falha
end
```

**Explicação do script:**

- `http.request(request)` executa a requisição e retorna um objeto de resposta.
- `response.is_a?(Net::HTTPSuccess)` verifica se a resposta é bem-sucedida (status 2xx) — forma idiomática do Ruby de verificar tipo de objeto.
- `response.code` retorna o status HTTP como String, `response.message` retorna a descrição (ex: `"OK"`), e `response.body` retorna o conteúdo da resposta.

---

### Utilizando o módulo `CSV`

> O módulo `CSV` da biblioteca padrão do Ruby permite ler e escrever arquivos `.csv` de forma simples. Diferente do `File`, ele já entende a estrutura de colunas e cabeçalhos.

```ruby
require 'csv' # Carrega o módulo CSV da biblioteca padrão do Ruby
```

---

### Escrevendo dados em CSV

> Assim como `File.open`, o `CSV.open` em modo `"w"` **cria o arquivo** se ele não existir. Porém, no caso de **leitura**, o arquivo precisa existir previamente.

```ruby
CSV.open("../Manipulação de arquivos/Csv/exemplo.csv", "w") do |csv| # "w" = modo escrita (write)
    csv << ["Nome", "idade", "cidade"] # << (shovel operator) escreve uma linha no CSV
    csv << ["Shademan", "90", "?"]
    csv << ["Rockman", "22", "NetCity"]
    csv << ["Protoman", "24", "NetCity"]
end
```

**Explicação do script:**

- `CSV.open` com `"w"` abre/cria o arquivo em modo escrita e passa o objeto `csv` para o bloco.
- O operador `<<` (Binary Left Shift / Shovel Operator) é usado para escrever cada linha — cada Array passado vira uma linha do CSV.

---

### Lendo dados em CSV

> `CSV.foreach` é o método mais eficiente para leitura de CSVs grandes, pois processa **linha a linha** sem carregar o arquivo inteiro na memória.

```ruby
CSV.foreach("../Manipulação de arquivos/Csv/exemplo.csv", headers: true) do |row|
    # headers: true indica que a primeira linha contém os nomes das colunas
    nome   = row["Nome"]   # Acessa o valor da coluna "Nome" pelo cabeçalho
    idade  = row["idade"]  # Acessa o valor da coluna "idade"
    cidade = row["cidade"] # Acessa o valor da coluna "cidade"
    puts "Nome: #{nome}, idade: #{idade}, cidade: #{cidade}"
end
```

**Explicação do script:**

- `headers: true` transforma a primeira linha do CSV em cabeçalhos — permite acessar cada coluna pelo nome (ex: `row["Nome"]`) em vez de pelo índice numérico.
- `row` representa cada linha do CSV como um objeto `CSV::Row`, que se comporta como um Hash.

---

## Gems

> Gems são bibliotecas empacotadas da comunidade Ruby — o equivalente aos pacotes `npm` do Node.js. São distribuídas pelo repositório oficial [rubygems.org](https://rubygems.org) e gerenciadas pelo **Bundler** em projetos Rails.

### Instalando uma gem via terminal

```ruby
gem install faker
```

> O `faker` é uma gem popular para geração de dados fictícios (nomes, e-mails, endereços etc.) — muito usada em seeds e testes automatizados.

---

### Utilizando gems via `Gemfile`

> O `Gemfile` é o arquivo de manifesto de dependências do projeto — equivalente ao `package.json` do Node.js. Ele declara quais gems o projeto precisa e em quais versões.

```ruby
source "https://rubygems.org" # Define o repositório oficial como fonte das gems
```

```ruby
# gem "nome_da_gem", "~> versão"
# O operador ~> (pessimistic version constraint) permite atualizações de patch,
# mas trava a versão minor — ex: "~> 3.2.0" aceita 3.2.x, mas não 3.3.0
gem "faker", "~> 3.2.0"
```

---

### Instalando as gems declaradas no Gemfile

> O **Bundler** lê o `Gemfile`, resolve as dependências e instala tudo de forma isolada para o projeto. O arquivo `Gemfile.lock` gerado trava as versões exatas — garantindo que todos no time usem as mesmas versões.

```bash
bundle install
```

> **Atenção ao diretório:** o comando `bundle install` deve ser executado na mesma pasta onde o `Gemfile` está localizado — caso contrário, o Bundler não encontrará o arquivo de configuração.