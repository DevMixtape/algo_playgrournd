module MergeSort
  class << self
    def sort(values)
      return values if values.empty?
      groups = break_into_groups_of_at_least_two(values)
      groups = sort_each_group(groups)
      merge_groups(groups)
    end

    private

    def break_into_groups_of_at_least_two(array)
      groups = array.each_slice(2).to_a
      return groups if groups.all? { |group| group.size < 3 }

      groups.map do |group|
        break_into_groups_of_at_least_two(group)
      end
    end

    def sort_each_group(array_of_groups)
      array_of_groups.map do |group|
        sorted_group(group)
      end
    end

    def sorted_group(group)
      return group if group.size < 2

      if group[0] > group[1]
        return [group[1], group[0]]
      else
        return group
      end
    end

    def merge_groups(groups)
      results = []

      while groups.any? do
        if groups.size > 1
          results << merge_two_groups([groups.shift, groups.shift])
        else
          results << groups.shift
        end
      end

      if results.size == 1
        return results.first
      else
        merge_groups(results)
      end
    end

    def merge_two_groups(groups)
      merged = []

      while groups.any?(&:any?) do
        case
        when groups[0].first.nil?
          merged << groups[1].shift
        when groups[1].first.nil?
          merged << groups[0].shift
        when groups[0].first < groups[1].first
          merged << groups[0].shift
        when groups[1].first < groups[0].first
          merged << groups[1].shift
        end
      end

      merged
    end
  end
end
