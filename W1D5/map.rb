class Map
  def initialize
    @arr = []
  end

  def assign(key, value)
    match_found = false

    @arr.each do |el|
      if key == el[0]
        match_found = true
        el[1] = value
      end
    end

    @arr.push([key, value]) if !match_found
    [key, value]
  end

  def lookup(key)
    @arr.each do |el|
      return el[1] if key == el[0]
    end

    nil
  end

  def remove(key)
    @arr.each_with_index do |el, idx|
      @arr.delete_at(idx) if key == el[0]
    end

    nil
  end

  def show
    @arr.dup
  end
end
