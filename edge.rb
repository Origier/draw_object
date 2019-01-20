class Edge
  attr_accessor :length, :vertex1, :vertex2, :x_coors, :y_coors, :xincrement, :yincrement
  def initialize(v1, v2)
    @vertex1 = v1      
    @vertex2 = v2
    @x_coors = []
    @y_coors = []
    @x_diff = @vertex1.x_coor - @vertex2.x_coor
    @y_diff = @vertex1.y_coor - @vertex2.y_coor
    @length = (Math.sqrt((@x_diff)**2 + (@y_diff)**2)).round(8)
    @xincrement = @x_diff.to_f / @length
    @yincrement = @y_diff.to_f / @length
    createEdge
  end

  def createEdge
    @x = @vertex2.x_coor
    @y = @vertex2.y_coor
    until @x.round == @vertex1.x_coor and @y.round == @vertex1.y_coor
      @x += @xincrement
      @y += @yincrement
      @x_coors << @x.round unless @x.round == @vertex1.x_coor and @y.round == @vertex1.y_coor
      @y_coors << @y.round unless @x.round == @vertex1.x_coor and @y.round == @vertex1.y_coor
    end
    if x_coors.length > 1
      removeDoubles
    end
  end

  private

  def removeDoubles
    @tempx = [@x_coors[0]]
    @tempy = [@y_coors[0]]
    @i = 1
    while @i < @x_coors.length
      @j = 0
      while @j < @tempx.length
        if @tempx[@j] == @x_coors[@i] and @tempy[@j] == @y_coors[@i]
          break
        else
          @j += 1
          next
        end
        @tempx << @x_coors[@i]
        @tempy << @y_coors[@i]
      end
      @i += 1
    end
    @x_coors = @tempx
    @y_coors = @tempy
  end
end