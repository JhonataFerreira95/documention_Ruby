=begin



=end

$n = ' '


def fatorial(num=1)
  f = 1

  for c in (1..num).downto(1)
    f*=c
  end

  return f

end

puts "Digite um número: "
n = gets.chomp

puts "O fatorial de #{n} é igual a #{fatorial(n)}"

