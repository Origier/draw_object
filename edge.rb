class Edge
  attr_accessor :length, :vertex1, :vertex2, :x_coors, :y_coors, :xincrement, :yincrement
  def initialize(v1, v2)
    @vertex1 = v1      
    @vertex2 = v2
    @x_coors = []
    @y_coors = []
    @x_diff = @vertex1.x_coor - @vertex2.x_coor
    @y_diff = @vertex1.y_coor - @vertex2.y_coor
    @length = (Math.sqrt((@x_diff)**2 + (@y_diff)**2)).round
    @xincrement = @x_diff.to_f / @length
    @yincrement = @y_diff.to_f / @length8
    createEdge
  end

  def createEdge
    #create a function that increments the x and y coordinates of one of your vertices and save those coordinates to the array until you reach the other vertex.
  end
end