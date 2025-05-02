def recursive_sum(numbers)
  if numbers.size <= 1
    numbers[0]
  else
    numbers.slice!(0) + recursive_sum(numbers)
  end

# Poderíamos fazer de forma ternaria:  
# numbers.size <= 1 ? numbers[0] : numbers.slice!(0) + recursive_sum(numbers)
end