def gamma_fnc(n)
  return nil if n < 1
  return 1 if n == 1
  (n - 1) * gamma_fnc(n - 1)
end

puts gamma_fnc(0)
puts gamma_fnc(1)
puts gamma_fnc(4)
puts gamma_fnc(8)
