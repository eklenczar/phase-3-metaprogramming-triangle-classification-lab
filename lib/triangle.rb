require "pry"

class Triangle

  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    # binding.pry
    if self.length_1 <= 0 || self.length_2 <= 0 || self.length_3 <= 0
      # binding.pry
      raise TriangleError
    elsif (length_1 + length_2) <= length_3 || (length_1 + length_3) <= length_2 || (length_3 + length_2) <= length_1
      raise TriangleError
    else
      if self.length_1 == self.length_2 && self.length_2 == self.length_3
        :equilateral
      elsif self.length_1 == self.length_2 || self.length_1 == self.length_3 || self.length_2 == self.length_3
        :isosceles
      else 
        :scalene
      end
    end
    
  end

  class TriangleError < StandardError
    
  end
end
