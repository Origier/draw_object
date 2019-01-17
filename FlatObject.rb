require_relative "vertex"
require_relative "edge"

class FlatObject
  attr_accessor :vertices, :edges, :x_coor, :y_coor

  def initialize(x, y)
    @vertices = []
    @edges = []
    @x_coor = x
    @y_coor = y
  end
  
  def addVertex(x, y)
    @vertices << Vertex.new(x,y)
  end

  def connectVertices(vertex1, vertex2)
    vertex1.createConnection(vertex2)
    vertex2.createConnection(vertex1)
    @edges << Edge.new(vertex1, vertex2)
  end

  def showCenter
    "(#{@x_coor}, #{@y_coor})"
  end
end