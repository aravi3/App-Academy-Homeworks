def sum_to(n)
  return nil if n < 1
  return 1 if n == 1
  n + sum_to(n-1)
end

puts sum_to(5)
puts sum_to(1)
puts sum_to(9)
puts sum_to(-8)
