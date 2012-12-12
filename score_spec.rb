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

  describe '#winner?' do
    subject do
      Score.new
    end

    [:server, :receiver].permutation(2).to_a.each do |players|
      context "#{players[1]} wins the game with 4 points" do
        before do
          2.times.each { subject.point_for(players[0])   }
          4.times.each { subject.point_for(players[1]) }
        end
        its(:winner?) { should == players[1] }
      end
    end
  end
end