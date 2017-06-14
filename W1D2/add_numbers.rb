def add_numbers(nums_array)
  return nums_array[0] if nums_array.length <= 1
  nums_array[0] + add_numbers(nums_array[1..-1])
end

puts add_numbers([1,2,3,4])
puts add_numbers([3])
puts add_numbers([-80,34,7])
puts add_numbers([])
