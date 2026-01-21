
puts "Digite a expressão matemática para ver se é válida: "
expressao = gets.chomp
pilha = []

expressao.each_char do |simb|
    if simb == ("(")
      pilha.push("(")
    elsif simb == (")")
      if pilha.size > 0
        pilha.pop
      else 
        pilha.push(")")
        break
      end
    end
end

if pilha.empty?
  puts "sua expressão é válida!"
else
  puts "sua expressão é invalida!"
end

