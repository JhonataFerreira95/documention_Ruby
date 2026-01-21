
puts "Digite a expressão matemática para ver se é válida: "
expressao << gets.chomp
pilha = []

for simb in expressao
    if simb == ("(")
      pilha.push("(")
    elsif simb == (")")
      if pilha.size < 0
        pilha.pop
      else 
        pilha.push(")")
        break
      end
    end
end

if pilha.size == 0
  puts "sua expressão é válida!"
else
  puts "sua expressão é invalida!"
end

