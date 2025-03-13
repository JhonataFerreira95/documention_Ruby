# 1-Como escreve em um arquivos de texto com ruby.

# Alternativa 1.

# Aqui utilizamos o <File.open> para abrir o arquivo. Como estamos trabalhando com modo de escrita, não precisamo que o arquivos exista, já que iremos criar o mesmo.
File.open("../Manipulação de arquivos/Text/courses.txt", "w") do |file| # Arquivo <data> não existe AINDA. Quando passamo o <"w"> significa que quero trabalha com write no ruby. 
  file.puts "Curso de OnRails"     #  Criamos um bloco com <do> passamos nos pipes <||> nossa variável que é <|file| e chamamos os arquivos de texto que serão criados.
  file.write "Curso de Gems" # Diferença entre o <puts> e o <write> é meramente uma quebra de linha, já que o <puts> possuí nativamente a quebra de linha e o <write> não.
  file.puts "Curso de UML"
end

# Alternativa 2.

File.open("../Manipulação de arquivos/Text/courses.txt", "a") do |file| # Aqui mudams o <"w"> pelo <"a"> já que o <"w"> sempre sobrescrever tudo na linha 1, e o <"a"> adicionar informações sempre na última linha em branco.
  puts "Qual curso deseja fazer? " # Passamos um <puts> para que o usuário digite o curso que deseja.
  course = gets.chomp # Definido a variável que vai armazenar o que o usuário passou no <puts>.
  file.puts course # Aqui usando o <file.puts> para grava no arquivo de texto, a variável <course> vai pegar o que o usuário digitou e passar para o <file.puts> salvar no arquivo txt.
end

