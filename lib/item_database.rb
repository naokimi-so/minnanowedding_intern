class ItemDatabase

  def initialize
    @array = []
  end

  def find(fruit_name)
    @array.each do |n|
      return n if n.name == name
    end
  end

  def add(fruit)
    @array << fruit
  end

end
