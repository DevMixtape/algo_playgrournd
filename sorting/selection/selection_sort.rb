module SelectionSort
  class << self
    def sort(values)
      last_index = values.size - 1

      values.each_index do |index|
        smallest_relative_index = find_smallest_index(values[index..last_index])
        smallest_index = smallest_relative_index + index

        if smallest_index != index
          values[index], values[smallest_index] = values[smallest_index], values[index]
        end
      end

      values
    end

    private

    def find_smallest_index(values)
      min_index = 0

      values.each_index do |index|
        next if index == 0

        if values[index] < values[min_index]
          min_index = index
        end
      end

      return min_index
    end
  end
end
