# Verificação de string que começa com Olá e termina com Mundo.

strings = [ "Sosuke aizen", "Olá, Aizen Sosuke", "O capitão Aizen jamais faria isso"]

string.each do |string|
    if string =~ /\ASosuke.*Aizen\z/
      puts "#{string} corresponde ao padrão"
    else
      puts "#{string} não corresponde ao padrão"
    end
end
