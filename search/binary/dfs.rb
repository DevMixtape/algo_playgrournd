require_relative './node'

module Binary
  module Dfs
    class << self
      def search(node, target)
        return node if target == node.value

        left = search(node.left, target) if node.left
        right = search(node.right, target) if node.right
      end
    end
  end
end
