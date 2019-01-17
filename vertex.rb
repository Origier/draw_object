class Vertex
  attr_accessor :x_coor, :y_coor, :connected, :connections
  
  def initialize(x, y)
    @x_coor = x
    @y_coor = y
    @connected = false
    @connections = []    
  end

  def createConnection(vertex)
    @connections << vertex
    @connected = true
    vertex.connections << self
    vertex.connected = true
  end
end
