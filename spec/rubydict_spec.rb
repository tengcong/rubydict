require 'rubydict'

describe Rubydict::MixBox::Dictionary do
  it "should load so file" do
    Rubydict::MixBox::Dictionary.should be_respond_to(:lookup)
  end
end

describe Rubydict::MixBox::Translator do
  describe "#lookup" do
    it "should return right response" do
      # translator = Rubydict::MixBox::Translator.new "spec/DrEye5in1/DrEye5in1"
      # expect{
      #   translator.lookup('hello').should_not be_nil
      # }.to_not raise_error
    end
  end
end

