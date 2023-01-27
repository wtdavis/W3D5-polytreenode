class PolyTreeNode

    attr_reader :parent, :children, :value

  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(node)
    if node == nil
        if @parent != nil
            index = @parent.children.index(self) 
            @parent.children.delete_at(index)
            @parent = nil
        end
    else
        if @parent == nil 
        @parent = node
        @parent.children << self
        else
            index = @parent.children.index(self) 
            @parent.children.delete_at(index)
            @parent = node
            @parent.children << self
        end

    end
    return @parent
        
  end

  # def inspect
  #   "<PTN: parent = #{parent.value}, children = #{children.value}, value = #{value}"
  # end
  


end