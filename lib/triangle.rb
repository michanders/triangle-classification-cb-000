class Triangle
  attr_accessor :side_1, :side_2, :side_3


  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    self.errors
    if self.equilateral
      return :equilateral
    elsif self.isosceles
      return :isosceles
    elsif self.scalene
      return :scalene
    end
  end

  def equilateral
    if side_1 == side_2 && side_1 == side_3
      return true
    end
  end

  def isosceles
    if side_1 == side_2 || side_1 == side_3 || side_2 == side_3
      return true
    end
  end

  def scalene
    if (side_1 != side_2 && side_3) && (side_2 != side_3)
      return true
    end
  end

  def errors
    if side_1 <=0 || side_2 <=0 || side_3 <=0
      raise TriangleError
    elsif side_1 + side_2 <= side_3
      raise TriangleError
    elsif side_1 + side_3 <= side_2
      raise TriangleError
    elsif side_2 + side_3 <= side_1
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "Triangle Error"
  end
end
