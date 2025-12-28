lista = []

while true
  puts "Digite o valor Desejado: "
  lista << gets.chomp.to_i
  puts "Deseja continuar[S/N]: "
  sair = gets.chomp.upcase
  if sair.include?("N")
    break
  end
end

print lista