require_relative "2D_object"

triangle = FlatObject.new(0,0)

triangle.addVertex(0,0)
triangle.addVertex(2,0)
triangle.addVertex(1,1)
triangle.connectVertices(triangle.vertices[0],triangle.vertices[1])
triangle.connectVertices(triangle.vertices[1],triangle.vertices[2])
triangle.connectVertices(triangle.vertices[2],triangle.vertices[0])

triangle.edges.each{ |edge| puts edge.length}