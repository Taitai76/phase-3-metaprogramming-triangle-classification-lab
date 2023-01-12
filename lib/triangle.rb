class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3) 
  @side1=side1
  @side2=side2
  @side3=side3
  end

  def kind
    if ((@side1>0 and @side2>0 and @side3>0) or (side1+side3>side2))
      if ((@side1 === @side2) and (@side2 === @side3)) 
       return :equilateral;
      elsif ((@side1 === @side2) or (@side2 === @side3) or (@side1 === @side3)) 
       return :isosceles;
      elsif @side1 != @side2 and @side2 != @side3 
       return :scalene;
      end
    else 
      begin
        raise TriangleError;
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Each side must be larger than 0."
    end
  end

end

  