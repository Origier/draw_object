class Edge
  attr_accessor :length, :vertex1, :vertex2
  def initialize(v1, v2)
    @vertex1 = v1           
    @vertex2 = v2           
    @length = (Math.sqrt((@vertex1.x_coor - @vertex2.x_coor)**2 + (@vertex1.y_coor - @vertex2.y_coor)**2)).round
  end
end