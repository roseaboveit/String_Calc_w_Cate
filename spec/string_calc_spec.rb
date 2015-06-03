require 'spec_helper'
# include '../string_calc.rb'

describe StringCalc do
  describe "Add" do
    it "can take an empty string and return 0" do
      expect(StringCalc.new.add("")).to eq(0)
    end

    it "returns the number when given a single number" do
      expect(StringCalc.new.add("4")).to eq(4)
    end

    it "returns the sum of 2 numbers if 2 numbers are given" do
      expect(StringCalc.new.add("1,2")).to eq(3)
    end

    it "returns the sum of more than 2 numbers" do
      expect(StringCalc.new.add("1,1,1,100")).to eq(103)
    end

    it "can handle numbers separated by new lines (as well as comas)" do
      expect(StringCalc.new.add("1\n2\n3")).to eq(6)
    end

    it "can handle numbers separated by both newlines AND commas" do
      expect(StringCalc.new.add("1\n2,3")).to eq(6)
    end
  end
end