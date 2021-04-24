require_relative "./spec_helper"
require_relative "../merge_sort"
require 'pry'

describe MergeSort do
  context "when simple valid input" do
    let(:values) { [3,4,2,1] }
    let(:sorted_value) { [1,2,3,4] }

    it "sorts values" do
      expect(MergeSort.sort(values)).to eq(sorted_value)
    end
  end

  context "when valid input" do
    let(:values) { [9,4,6,2,1,5,3,7,8] }
    let(:sorted_value) { [1,2,3,4,5,6,7,8,9] }

    it "sorts values" do
      expect(MergeSort.sort(values)).to eq(sorted_value)
    end
  end

  context "when large and in charge input" do
    let(:values) do
      values = []
      1000.times { values << rand(1..99999999) }
      values
    end
    let(:sorted_value) { values.sort }

    it "sorts values" do
      expect(MergeSort.sort(values)).to eq(sorted_value)
    end
  end

  context "when array is empty" do
    let(:values) { [] }

    it "returns empty array" do
      expect(MergeSort.sort(values)).to eq(values)
    end
  end
end
