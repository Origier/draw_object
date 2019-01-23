class Edge
  attr_accessor :length, :vertex1, :vertex2, :x_coors, :y_coors, :x_coorsf, :y_coorsf, :xincrement, :yincrement
  def initialize(v1, v2)
    @vertex1 = v1      
    @vertex2 = v2
    @x_coors = []
    @y_coors = []
    @x_coorsf = []
    @y_coorsf = []
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
      @x_coorsf << @x unless @x.round == @vertex1.x_coor and @y.round == @vertex1.y_coor
      @y_coorsf << @y unless @x.round == @vertex1.x_coor and @y.round == @vertex1.y_coor
    end
    if x_coorsf.length > 1
      roundCoors
    end
  end

  private

  def roundCoors
    @x_coors = [@x_coorsf[0].round]
    @y_coors = [@y_coorsf[0].round]
    @i = 1
    while @i < @x_coorsf.length
      @x_coors << @x_coorsf[@i].round
      @y_coors << @y_coorsf[@i].round
      @i += 1
    end
    @i = 0
    while @i < @x_coors.length
      if @x_coors[@i] == @x_coors[@i + 1] and @y_coors[@i] == @y_coors[@i - 1]
        @x_coors.delete_at(@i)
        @y_coors.delete_at(@i)
      else 
        @i += 1
      end
    end
  end
end