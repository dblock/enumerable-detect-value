require 'spec_helper'

describe Array do
  describe "#detect_value" do
    it "does not evaluate after the first value" do
      calls = 0
      result = [ nil, 2, 3 ].detect_value do |value|
        calls += 1
        value ? value * 10 : nil
      end
      result.should == 20
      calls.should == 2
    end
    it "returns nil" do
      result = [ 1, 2, 3 ].detect_value do |value|
        nil
      end
      result.should be_nil
    end
  end
end
