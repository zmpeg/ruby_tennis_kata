require_relative 'score'

describe Score do
  
  describe "#initialize" do
    its(:server)   { should == 0 }
    its(:receiver) { should == 0 }
  end
    
  describe '#point_for' do
    4.times.each do |t|
      [:server, :receiver].each do |p|
        context "#{p} makes a point #{t} times" do
          before { t.times { subject.point_for(p) } }
          its(p) { should == t }
        end
      end
    end
  end
end