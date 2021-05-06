require_relative "./spec_helper"
require_relative "../binary_search"

describe BinarySearch do
  context "with odd number of values" do
    let(:values) { [1,2,3,4,5] }

    it "returns correct index" do
      expect(BinarySearch.find_index(values, 1)).to eq(0)
    end

    it "returns correct index" do
      expect(BinarySearch.find_index(values, 2)).to eq(1)
    end

    it "returns correct index" do
      expect(BinarySearch.find_index(values, 3)).to eq(2)
    end

    it "returns correct index" do
      expect(BinarySearch.find_index(values, 4)).to eq(3)
    end

    it "returns correct index" do
      expect(BinarySearch.find_index(values, 5)).to eq(4)
    end
  end

  context "with even number of values" do
    let(:values) { [1,2,3,4] }

    it "returns correct index" do
      expect(BinarySearch.find_index(values, 1)).to eq(0)
    end

    it "returns correct index" do
      expect(BinarySearch.find_index(values, 2)).to eq(1)
    end

    it "returns correct index" do
      expect(BinarySearch.find_index(values, 3)).to eq(2)
    end

    it "returns correct index" do
      expect(BinarySearch.find_index(values, 4)).to eq(3)
    end
  end
end
