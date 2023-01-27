class PolyTreeNode
  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(node)
    if @parent == nil
      @parent = node
      node.children << self
    end
  end

  
  attr_reader :parent, :children, :value
end