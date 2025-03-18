# Projeto de pesquisa de string

## Índice

1. [Alternativa 1](#altertnativa-1)
2. [Alternativa 2]()


---

## Introdução
Aqui utilizei do que aprendi sobre, metódos, manipulação de arquivos e strings para criar esse programa.

## Altertnativa 1.
Feito uma pesquisa de arquivos bem básica, porém foi aprimorada na alternativa 2, demostrarei só um pouco da primeira versão antes de seguir em si.

Primeira alternativa:
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
