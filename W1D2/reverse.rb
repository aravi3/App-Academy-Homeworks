def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string[0..-2])
end

puts reverse("house")
puts reverse("dog")
puts reverse("atom")
puts reverse("q")
puts reverse("id")
puts reverse("")
