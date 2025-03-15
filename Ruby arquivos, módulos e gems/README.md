# Documentação do Ruby

## Índice

1. [Arquivos](#manipulação-de-arquivos-no-ruby)
2. [Módulos]()
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