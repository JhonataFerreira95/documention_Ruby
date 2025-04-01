# Projetos

## Índice

1. [Projeto de pesquisa de string](#projeto-de-pesquisa-de-string)
2. [Projeto calcular a área de um quadrado e ratângulo](#projeto-calcular-a-área-de-um-quadrado-e-ratângulo)
3. [Projeto de agenda de contatos](#projeto-de-agenda-de-contatos)
4. [Projeto criação de dados faker](#projeto-criação-de-dados-faker)

## Projeto de pesquisa de string

### Índice

1. [Alternativa 1](#altertnativa-1)
2. [Alternativa 2](#altertnativa-2)

---

### Introdução
Aqui utilizei do que aprendi sobre, metódos, manipulação de arquivos e strings para criar esse programa.

### Altertnativa 1.
Feito uma pesquisa de arquivos bem básica, porém foi aprimorada na alternativa 2, demostrarei só um pouco da primeira versão antes de seguir em si.

#### Primeira alternativa:

```ruby
def search(key) # Criação do metódo com parâmentro.
  Dir.glob("../Manipulação de arquivos/Text/*.txt") do |file| # Ussamos o <Dir.glob> para abrir o diretõrio, com <do> iniciamos um bloco que passamos a nossa variãvel entre os pipes <|file>.
    f = File.open(file) # Criamos a variável <f> e passamos <File.open> para abrir o arquivo que incializado no bloco acima com a variável <|file|>.
    f.each_with_index do |line, index| # Vamos percorrer o arquivo com <each>, utilizamos o <do> para criar um bloco para ler o arquivo com <|line, index>.
      if line.include?(key) # Condição para se na minha <line> estiver incluso a <key> ele fará uma leitura na linha e vai retornar <file> e <index>
        return file, index 
      end
    end
  f.close # Para fecha nosso arquivo.
  end
end

# Alternativa 1 para vizualizar o programa em execução, bem básica.

puts "Busca palavras em arquivos!"
puts "Digite uma palavra a ser procurada: "
key = gets.chomp

filename, linenumber = search(key) # Aqui passamos a variável ( <filname> == <file> linha 8) que representada na linha 8 e o mesmo vale para ( <linenumber> == <index> linha 8).
puts "Arquivo: #{filename} Linha: #{linenumber + 1}" # Como começamos a contagem do indice 0, adicionamos <+1> para começa na linha 1.

```

### Altertnativa 2.
Alternativa 2 já é bem mais robusta e com uma condição que retorna se não encontra nada, sem conta que utilizei o `.capitalize` para as primeira fileiras das strings ficarem maiúsculas.

#### Segunda alternativa:

```ruby
def search(key) # Criamos nosso metódo com o parâmetro <key>.
  result = {} # Criação do hash.
  Dir.glob("../Manipulação de arquivos/Text/*.txt") do |file| # Ussamos o <Dir.glob> para abrir o diretõrio, com <do> iniciamos um bloco que passamos a nossa variãvel entre os pipes <|file>.
    f = File.open(file) # Criamos a variável <f> e passamos <File.open> para abrir o arquivo que incializado no bloco acima com a variável <|file|>.
    f.each_with_index do |line, index| # Vamos percorrer o arquivo com <each>, utilizamos o <do> para criar um bloco para ler o arquivo com <|line, index>.
      if line.include?(key) # Condição para se na minha <line> estiver incluso a <key> ele fará uma leitura na linha.
        result[index + 1] = file # Retornamos o resultado o hash <result>, adicionamos o <index> no array porém, como a contagem começa no 0 utilizamos o <index + 1> para começa na linha 1 do arquivo.
      end
    end
    f.close
  end
  result
end

puts "Busca palavras em arquivos!"
puts "Digite uma palavra a ser procurada: "
key = gets.chomp.capitalize # Utilizei um <.capitalize> para que toda a primeira fileira sempre da string venha maiúscula.

result = search(key) # Nossa variável <result> recebe como padrão nosso metódo.
if result.length > 0 # Aqui utlilizamos length para ler o tamanho da variável <resutl> e compara-lá ao <0>.
  for key, value in result # Como o result é um hash, pegamos tanto a chave como o valor.
    puts "Arquivo: #{value} Linha: #{key}"
  end
else
  puts "Não encontrado!" # Meio óbvio o porque temos esse else.
end

```

## Projeto calcular a área de um quadrado e ratângulo

### Índice

1. [Calcular o quadrado](#calcular-o-quadrado)
2. [Calcular o retângulo](#calcular-o-retângulo)
3. [Testando o módulo](#testando-o-módulo)

---

### Introdução
Aqui utilizei do que aprendi sobre, modulos, e metódos com parâmetros para criação desse programa, ao todo foram 2 módulos feitos.

#### Calcular o quadrado.

```ruby

module Calcula_quadrado # Criado o nome do módulo.
  def self.quadrado(area) # criado o metódo com o nome e utilizado <self.nome módulo>.
      area * area # Cálculo da area do quadrado.
  end
end

```

#### Calcular o retângulo.

```ruby

module Calcula_retangulo # Criado o nome do módulo.
  def self.quadrado(base, altura) # criado o metódo com o nome e utilizado <self.nome módulo>.
      base * altura # Cáculo para área de um rentângulo.
  end
end

```
#### Testando o módulo.

```ruby

puts Calcula_quadrado.quadrado(10) # Retorna no terminal nossa área de quadrado, para chamamos nosso metódo utilizamos o <.nome do metódo>, assim ele irá funcionar perfeitamente.

puts Calcula_retangulo.quadrado(20, 20) # Retorna no terminal nossa área de retângulo, para chamamos nosso metódo utilizamos o <.nome do metódo>, assim ele irá funcionar perfeitamente.

```

## Projeto de agenda de contatos

### Índice

1. [Importando módulo](#importando-módulo)
2. [Inputs do usuário](#inputs-do-usuário)
3. [Escrevendo arquivo com `CSV.open`](#escrevendo-arquivo-com-csvopen)
4. [Lendo arquivo com `CSV.foreach`](#lendo-arquivo-com-csvforeach-e-uma-condicional-verificando-se-o-arquivo-foi-criado)

---

#### Importando módulo.

```ruby

require 'csv'

```

#### Inputs do usuário.

```ruby

puts "Bem-vindo a agenda de contatos!"

puts "Digite o nome que deseja salvar o contato (ex:ruby)"
print "nome: "
nome = gets.chomp

puts "Digite a idade contato (ex:23)"
print "idade: "
idade = gets.chomp.to_i

puts "Digite a cidade do contato (ex:natal)"
print "cidade: "
cidade = gets.chomp 

puts "Ex de diretório/contado: caminho = C:/Users/bass1/Downloads/>contatos.csv<, aqui o nome do contado.csv"

puts "Digite o diretório para salvar seu contato e o nome da arquivo: "
caminho = gets.chomp

```

#### Escrevendo arquivo com `CSV.open`.

```ruby

CSV.open(caminho, "w") do |csv| # Aqui iniciei o caminho do arquivo e definir que utilizarei <w> que é write, sendo escrita.
    csv << ["nome", "idade", "cidade"] # Criei um cabeçalho. 
    csv << [nome, idade, cidade] # Usei o <binary left_shitf> para escrever no arquivos.
end

```

#### Lendo arquivo com `CSV.foreach` e uma condicional verificando se o arquivo foi criado.

```ruby

if File.exist?(caminho) # Aqui iniciei um <File.exist?> para verificar se o arquivo existe e mostra ao usuário que foi salvo com sucesso.
  CSV.foreach(caminho, headers: true) do |row| # Lendo informações do arquivos com <CSV.foreach>.
    puts "Seu contado foi salvo, o nome: #{row["nome"]}, idade: #{row["idade"]}, cidade: #{row["cidade"]}."
  end
  puts "Seu contato foi salvo #{caminho} com sucesso!"
else # Caso não encontro, retorna um erro.
  puts "falha em criar seu contato."
end

```

## Projeto criação de dados faker

### Índice

1. [Importando módulo](#importando-gem-e-módulo)
2. [Armazenando dados 20 vezes](#armazenando-dados-20-vezes)
3. [Expotando para `CSV`](#expotando-para-csv)
4. [Mensagem de sucesso em salvar os dados](#mensagem-de-sucesso-em-salvar-os-dados)

#### Importando gem e módulo.

```ruby

require "faker" # Importei a gem.
require "csv" # Importei o módulo.

```

#### Armazenando dados 20 vezes.

```ruby

dados = []

20.times do # Criei um loop para ser executado 20 vezes.

  nome = Faker::Name.name # Aqui utilizei a gem <Fake> e um submódulo <Name> seguido da classe <name> para gerar um nome aleatório.
  email = Faker::Internet.email # Aqui utilizei a gem <Fake> e um submódulo <Internet> seguido da classe <email> para gerar emails aleatório.
  telefone = Faker::PhoneNumber.phone_number # Aqui utilizei a gem <Fake> e um submódulo <PhoneNumber> seguido da classe <phone_number> para gerar números de telefones aleatório.

  dados << [nome, email, telefone] # Passando os dados para o meu array utilizando o <binary left_shift>.

end

```

#### Expotando para CSV.

```ruby

arquivo_csv = "../Manipulação de arquivos/Csv/dados_faker.csv" # Criado a variável para apontar para diretório.

CSV.open(arquivo_csv, "w") do |csv| # Aqui iniciei o caminho do arquivo e definir que utilizarei <w> que é write, sendo escrita.
  csv << ["Nome", "E-mail", "Telefone"] # Criei um cabeçalho utilizando o <binary left_shift>.
  dados.each do |dado| # Depois que criar o cabeçalho, chamei os dados com <dados> interei os dados com <.each>, criamos um bloco com <do> seguido com a variável dentro dos pipes <|dado|>.
    csv << dado # Utilizando o <binary left_shift> para passar os dados para arquivo <csv>. Depois que tiver o cabeçalho ele vai pegar os itens do meu array e passar para meu arquivo <csv>.
  end
end

```

#### Mensagem de sucesso em salvar os dados.

```ruby

puts "Dados foram salvo em #{arquivo_csv}!"

```