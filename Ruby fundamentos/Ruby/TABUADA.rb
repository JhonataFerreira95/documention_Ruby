tab = 0

while tab != -1
  puts "Bem-vindo ao app tabuada!"
  puts "--------------------------"
  puts "Digite a tabuada que deseja saber (OBS: vai até o 10): "
  puts "Digite -1 para sair."
  
  tab = gets.chomp.to_i

  if tab == -1
    puts "Saindo..."
    break
  end

  if tab < 1 || tab > 10
    puts "Por favor, digite um número entre 1 e 10."
    next
  end

  puts "Tabuada do #{tab}:"
  (1..10).each do |i|
    puts "#{tab} x #{i} = #{tab * i}"
  end
end