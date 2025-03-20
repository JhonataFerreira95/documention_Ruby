# Projeto de pesquisa de string

## Índice

1. [Alternativa 1](#altertnativa-1)
2. [Alternativa 2](#altertnativa-2)

---

## Introdução
Aqui utilizei do que aprendi sobre, metódos, manipulação de arquivos e strings para criar esse programa.

## Altertnativa 1.
Feito uma pesquisa de arquivos bem básica, porém foi aprimorada na alternativa 2, demostrarei só um pouco da primeira versão antes de seguir em si.

### Primeira alternativa:

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

## Altertnativa 2.
Alternativa 2 já é bem mais robusta e com uma condição que retorna se não encontra nada, sem conta que utilizei o `.capitalize` para as primeira fileiras das strings ficarem maiúsculas.

### Segunda alternativa:

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

# Projeto criação de um módulo de conversão

## Índice

1. [Milhas para pés](#milhas-para-pés)
2. [Milhas para polegadas](#milhas-para-polegas)
3. [Milhas para centímetros](#milhas-para-centímetros)
4. [Testando o módulo](#testando-o-módulo)


---

## Introdução
Aqui utilizei do que aprendi sobre, metódos, manipulação de arquivos com calculo simples para converte milhas para pés, polegadas e centímetros, reaproveitando o código e de fáicl entendimento.

### Milhas para pés.

```ruby

module LengthConversions # Criação do nome do nosso módulo.
  def self.miles_to_feet(miles) # Para indica que o metódo que foi criado, faz parte do meu módulo utilizamos o <self.(nome módulo)>.
    miles * 5280 # Cálculo para converte milhas para pés.
  end

```

### Milhas para polegas.

```ruby

def self.miles_to_inches(miles) # Para indica que o metódo que foi criado, faz parte do meu módulo utilizamos o <self.(nome módulo)>.
    feet = miles_to_feet(miles) # Como ver, aqui não precisamos do <self.>, já que estamos execultando o módulo em si e não atribuindo. Criando a referência para reaproveitar o módulo <self.miles_to_feet>.
    feet * 12 # Cálculo para converte milhas para polegadas. feet = 5280 * 12 = 63360.
  end

```
### Milhas para centímetros.

```ruby

def self.miles_to_centimers(miles) # Para indica que o metódo que foi criado, faz parte do meu módulo utilizamos o <self.(nome módulo)>.
    inches =  miles_to_inches(miles) # Como ver, aqui não precisamos do <self.>, já que estamos execultando o módulo em si e não atribuindo. Criando a referência para reaproveitar o módulo <self.miles_to_inches>.
    inches * 2.54 # Cálculo para converte milhas para centímetros. inches = 63280 * 2.54 = 160934.
  end
end

```

### Testando o módulo.

#### Aqui criei um arquivo chamado `main.rb` para testa o se o módulo está funcionando perfeitamente.

#### Alternativa 1 para chamada do módulo.

```ruby

# Importando o módulo, alternativa 1.

# Aqui utilizamos o <require> para importa o nosso módulo. Essa é uma das forma de importação de módulos. Como ele está no mesmo diretório do nosso <main> utilizamos <./>
 require './conversao.rb' 

puts LengthConversions.miles_to_feet(10) # Para fazer a conversão de milhas para pés.
puts LengthConversions.miles_to_inches(20) # Para fazer a conversão de milhas para polegas.
puts LengthConversions.miles_to_centimers(30) # Para fazer a conversão de milhas para centímetros.

```
#### Alternativa 2 para chamada do módulo.

```ruby

# Aqui utilizamos o <require_relative> para importa o modulo de forma relativa, ele precisa está no mesmo diretório para ser importado.
 require_relative 'conversao'

puts LengthConversions.miles_to_feet(10) # Para fazer a conversão de milhas para pés.
puts LengthConversions.miles_to_inches(20) # Para fazer a conversão de milhas para polegas.
puts LengthConversions.miles_to_centimers(30) # Para fazer a conversão de milhas para centímetros.

```

