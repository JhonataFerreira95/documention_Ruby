
puts "="*30
puts "BANCO CENTRAL".center(30)
puts "="*30

puts "Qual valor você deseja sacar? R$ "
valor = gets.chomp.to_i

total = valor 
ced = 50
total_ced = 0

while true

  if total >= ced
    total -= ced
    total_ced += 1
  else
    if total_ced > 0
      puts "Total de #{total_ced} cédua de R$#{ced}"
    end
    if ced == 50
      ced = 20
    elsif ced == 20
      ced = 10
    elsif ced == 10
      ced = 1
    end
  total_ced = 0
  if total == 0
    break
  end
  end

end

