# 1-Leitura de arquivos/dados no ruby.

# Alternativa 1

movies = File.open("../Manipulação de arquivos/Text/anime.txt") # <File.open> é um módulo que trabalha com arquivos. Quando trabalhamos com arquivos, temos 2 entradas, input e output == entrada de dados e saída de dados.
puts movies

puts movies.class # Para que serve o <.class>? Serve para confirmar que movies é realmente um objeto da classe file, assim confirmando que é um arquivo.

movies.each { |line| puts line.strip } # Utilizamos <each> para ler cada linha do arquivo.
# <line> representa cada linha lida e <.strip> remove os espaços em branco antes e depois do texto. O <puts> imprime a linha no console.

# Alternativa 2

file_path = "../Manipulação de arquivos/Text/anime.txt" 

File.open(file_path, "r") do |file| 
# Abrimos o arquivo com <File.open>, passamos a nossa variável, em seguida útilizamos o <"r"> para indicar que é <READ == leitura>

  file.each_line { |line| puts line.strip unless line.strip.empty? } 
  end
# Utilizamos o <each> para percorrer o arquivo linha a linha, utilizamos o <line> para representar cada linha linda.
# O <.strip> para remover espaços extras no início e no final da linha, <unless> verifica se a linha não está vazia <line.strip.empty?>. Se a linha NÃO estiver vazia, ela é imprimida no terminal.


