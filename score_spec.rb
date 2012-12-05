require_relative 'score'

describe Score do
  
  describe "#initialize" do
    its(:server)   { should == :love }
    its(:receiver) { should == :love }
    its(:to_s)     { should == "love love" }
  end
  
  describe '#give_point' do
    before { subject.give_point(:server) }
    its(:to_s) { should == 'fifteen love' }
  end
  
end