
puts "Digite a expressão matemática para ver se é válida: "
expressao << gets.chomp
pilha = []

for simb in expressao
    if simb == ("(")
      pilha.push("(")
    elsif simb == (")")
      pilha.push(")")
    end
end

