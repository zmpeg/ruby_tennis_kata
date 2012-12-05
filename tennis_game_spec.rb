require 'set'

require_relative './tennis_game'

describe TennisGame do
  
  let(:players) { Set.new [:red, :blue] }

  context "First round" do
    [:red, :blue].each do |player|
      context "#{player} scores" do
        before {subject.win_the_ball(player)} 

        it { subject.score(player).should == 1 }
        it { subject.score(players.delete(player).first).should == 0 }
      end
    end
  end
    
  context "Second round" do
    [:red, :blue].each do |player|
      context "#{player} scores twice" do
        before { 2.times { subject.win_the_ball(player) } }

        it { subject.score(player).should == 2 }
        it { subject.score(players.delete(player).first).should == 0 }
      end
    end
  end

end