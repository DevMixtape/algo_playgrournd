module BinarySearch
  class << self
    def find_index(values, target_value, starting_index = nil, ending_index = nil)
      return if starting_index && ending_index && starting_index > ending_index

      min_index = starting_index || 0
      max_index = ending_index || values.size - 1
      mid_index = (min_index + max_index) / 2

      case
      when target_value == values[mid_index]
        return mid_index
      when target_value < values[mid_index]
        find_index(values, target_value, min_index, mid_index)
      when target_value > values[mid_index]
        find_index(values, target_value, mid_index + 1, max_index)
      end
    end
  end

end
