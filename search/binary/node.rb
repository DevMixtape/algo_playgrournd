module Binary
  class Node
    attr_accessor :left, :right_child, :value

    def initialize(opts = {})
      @value       = opts.dig(:value)
      @left  = opts.dig(:left)
      @right_child = opts.dig(:right_child)
    end
  end
end
