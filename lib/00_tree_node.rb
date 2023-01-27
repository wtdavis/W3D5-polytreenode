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

  def add_child(child_node)

    #self.children << child_node if !self.children.include?(child_node)
    child_node.parent = self if !self.children.include?(child_node)
  end

  def remove_child(child_node)
    if !self.children.include?(child_node)
      raise "The node doesn't have this child"
    else
      self.children.delete(child_node)
      child_node.parent = nil
    end

  end

  # def inspect
  #   "<PTN: parent = #{parent.value}, children = #{children.value}, value = #{value}"
  # end
  


end