def recursivo(count = 1)
    puts "Bass"
    return if count == 10
    recursivo(count+1)
end

puts recursivo