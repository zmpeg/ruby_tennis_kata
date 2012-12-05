require_relative './tennis_game'

describe TennisGame do
  
  context "A player scores a point" do
    before do 
      subject.win_the_ball(:red)
    end
    
    it { subject.score(:red).should == 1 }
    it { subject.score(:blue).should == 0 }
  end
  
end