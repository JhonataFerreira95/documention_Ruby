# Verificação de string que começa com Olá e termina com Mundo.

strings = [ "Sosuke aizen", "Olá, aizen Sosuke", "O capitão aizen jamais faria isso"]

strings.each do |string|
    if string =~ /\ASosuke.*aizen\z/
      puts "#{string} corresponde ao padrão"
    else
      puts "#{string} não corresponde ao padrão"
    end
end

# Verificação de string que termina 3.2

string2 = ["Ruby-3.2", "Ruby-2.0", "Ruby-3.2, é poderoso"]

string2.each do |string2|
  if string2 =~ /^Ruby.*3\.2$/
    puts "Corresponde à um padrão <#{string2}>"
  else
    puts "Não teve nenhum padrão em <#{string2}>"
  end
end
