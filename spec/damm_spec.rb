$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'damm'
require 'rspec'

describe Damm do

  describe "::generate" do

    it "calculates an interim digit" do
      expect(Damm.generate(572)).to eq(4) 
    end

  end

  describe "::valid?" do

    it "validates the interim digit" do
      expect(Damm.valid?(5724)).to eq(true)
    end

  end

end
