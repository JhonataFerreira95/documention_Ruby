# Referência formatação

=begin

%b nome do mês abreviada(jan)  
%B  nome do mês completo(january)
%d # dia do mês (1..31)
%j # dia do ano (1.366)
%m # mês como um número (1..12)
%w # dia da semana como número (0..6)
%y # ano em dois dígitos
%Y # ano em quatro dígitos

=end

someday = Time.new(2025, 3, 31)

puts someday
# puts someday.to_s

puts someday.strftime("%Y-%m-%d")