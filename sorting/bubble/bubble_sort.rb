module BubbleSort
  class << self
    def sort(values)
      max_index = values.length - 1
      values.each_index do |index|
        next if index == max_index

        if values[index] > values[index + 1]
          values[index], values[index + 1] = values[index + 1], values[index]
        end
      end

      sort(values) unless already_sorted?(values)
      values
    end

    private

    def already_sorted?(values)
      max_index = values.length - 1

      values.each_index do |index|
        next if index == max_index

        return false if values[index] > values[index + 1]
      end
    end
  end
end
