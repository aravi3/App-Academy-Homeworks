# Bit O-ctopus and biggest fish
# A Very Hungry Octopus wants to eat the longest fish in an array of fish
# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh',
# 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

# Find the longest fish in O(n^2) time. Do this by comparing all fish
# lengths to all other fish lengths
# Bubble sort
def sluggish_octopus(fishes)
  fishes.each_index do |i|
    max_length = true

    fishes.each_index do |j|
      next if i == j
      max_length = false if fishes[j].length > fishes[i].length
    end

    return fishes[i] if max_length
  end
end

p sluggish_octopus(fish_array)

# Find the longest fish in O(n log n) time
# Merge sort
class Array
  def dominant_octopus(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if self.length <= 1

    midpoint = self.length / 2
    left = self.take(midpoint).dominant_octopus(&prc)
    right = self.drop(midpoint).dominant_octopus(&prc)

    Array.merge(left, right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    while !left.empty? && !right.empty?
      case prc.call(left.first.length, right.first.length)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged += left
    merged += right

    merged
  end
end

p fish_array.dominant_octopus.last

# Find the longest fish in O(n) time
# The octopus can hold on to the longest fish that you have found so
# far while stepping through the array only once
def clever_octopus(fishes)
  longest_fish = ""

  fishes.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end

  longest_fish
end

p clever_octopus(fish_array)

# Full of fish, the Octopus attempts Dance Dance Revolution
# The game has tiles in the following directions
# To play the game, the octopus must step on a tile with her
# corresponding tentacle. We can assume that the octopus's eight
# tentacles are numbered and correspond to the tile direction indices

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

# Given a tile direction, iterate through a tiles array to return
# the tentacle number (tile index) the octopus must move
# This should take O(n) time
def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, idx|
    return idx if tile == direction
  end

  nil
end

p slow_dance("right-down", tiles_array)

# Now that the octopus is warmed up, let's help her dance faster
# Use a different data structure and write a new function so that you
# can access the tentacle number in O(1) time
TILES_HASH = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def fast_dance(direction, tiles_array)
  TILES_HASH[direction]
end

p fast_dance("right-down", tiles_array)
