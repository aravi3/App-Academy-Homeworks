def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  return true if flavors.pop == favorite

  ice_cream_shop(flavors, favorite)
end

puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')
puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')
puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')
puts ice_cream_shop(['moose tracks'], 'moose tracks')
puts ice_cream_shop([], 'honey lavender')
