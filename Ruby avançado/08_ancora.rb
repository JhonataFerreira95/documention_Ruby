# Verificação de string que começa com Olá e termina com Mundo.

strings = [ "Sosuke aizen", "Olá, aizen Sosuke", "O capitão aizen jamais faria isso"]

strings.each do |string|
    if string =~ /\ASosuke.*aizen\z/
      puts "#{string} corresponde ao padrão"
    else
      puts "#{string} não corresponde ao padrão"
    end
end
