require_relative './tennis_game'

describe TennisGame do
  
  context "A player scores a point" do
    context "Red scores" do
      before {subject.win_the_ball(:red)} 

      it { subject.score(:red).should == 1 }
      it { subject.score(:blue).should == 0 }
    end
    
    context "Blue scores" do
      before {subject.win_the_ball(:blue)} 

      it { subject.score(:red).should == 0  }
      it { subject.score(:blue).should == 1 }
    end
  end

end