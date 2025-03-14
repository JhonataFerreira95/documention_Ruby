# 1-Utilizando argumentos.'

ARGV.each { |arg| puts arg }
# Para ver o tipo do arg utilizamos o <.class>, para isso acontece você deve passar o argumento direto no terminal.
ARGV.each { |arg| puts arg.class } 
# Vamos colocar um "óla" no terminal, a saída é exatamente assim <óla> quebra a linha e vem o tipo <string>. No argv, por padrão tudo vem em STRING.

# 2-Potência de um número com ARGV.

ARGV.each do |arg| # Criamos um bloco com o <do>, passamos nossa variável com os pipes <|arg|>.
  pot = arg.to_i ** 2 # Convertendo o <arg> para inteiro, já que o <ARGV> por padrão é string, atribuímos o <arg.to_i> à variável <pot>.
  puts "Potência do número #{arg} é #{pot}" # Aqui iremos ao terminal e passar o argumento no terminal, como visto acima. Passaremos um 4, isso deve retorna um 16 no terminal.
end

# 3-Salvando conteúdo de argumento em arquivo

File.open("../Manipulação de arquivos/Text/games.txt", "a") do |file| # Criação de arquivo com <File.open>, vamos trabalha com <a>, já que ele sempre adiciona informação na última linha sem nada escrito.
  ARGV.each do |game| # Iniciamos o bloco e passamos nos pipes nossa variável. Qual quer parâmetro que passamos na execução terá o nome de <game>.
    file.puts game # Aqui com o <File.puts> para salvamos às informações.
  end
end
