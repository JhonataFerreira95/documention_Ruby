# Trabalhando com arquivos, módulos e gems

## Índice

1. [Arquivos](#manipulação-de-arquivos-no-ruby)
2. [Módulos](#módulos)
3. [Gems]()


---

## Introdução
No Ruby, arquivos são manipulados para leitura, escrita e atualização de dados usando classes como `File` e `IO`.

Os módulos ajudam na organização e reutilização de código, funcionando como bibliotecas. Eles podem conter métodos e constantes, permitindo a implementação de `mixins` com `include` e `extend`.

Já as gems são bibliotecas externas que ampliam as funcionalidades do Ruby. Instaladas via `gem install` nome_da_gem, podem ser usadas com require.

- **Arquivos, módulos, gems:**
  - Manipulação de arquivos.
  - Módulos úteis.
  - Introdução a gems.

---

## Manipulação de arquivos no Ruby
Aqui damos inicios a manipulação de arquivo com ruby, iremos iniciar de uma formas simples lendo arquivos com `File.open`.

#### Lendo arquivos com Ruby.

Primeira alternativa para ler um arquivo
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

Segunda alternativa para ler um arquivo
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

##### Passando argumentos

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

## Módulos

## Módulos úteis com ruby
Aqui damos inicios a utilizar módulos como `Math`, `HTTP`, `URI` e `CSV`. 

### Utilizando o módulo Math.

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