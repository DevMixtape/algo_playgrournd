module QuickSort
  class << self
    def sort(values)
      return values if values.size < 2

      left, right = [], []
      pivot_index = values.count - 1
      pivot_value = values[pivot_index]

      values.each_index do |index|
        next if index == pivot_index
        values[index] < pivot_value ? left << values[index] : right << values[index]
      end

      results = []
      results.concat(sort(left))
      results << pivot_value
      results.concat(sort(right))
      results
    end
  end
end
