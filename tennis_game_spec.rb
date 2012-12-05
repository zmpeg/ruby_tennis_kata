require 'set'

require_relative './tennis_game'

describe TennisGame do
  
  let(:players) { [:red, :blue] }

  subject { TennisGame.new(players) }
  
  describe "#players" do
    its(:players) { should == players }
  end
  
  context "First round" do
    [:red, :blue].each do |player|
      context "#{player} scores" do
        before { subject.win_the_ball(player) } 
        it { subject.score.should == :fifteen }
      end
    end
  end
    
  context "Second round" do
    [:red, :blue].each do |player|
      context "#{player} scores twice" do
        before { 2.times { subject.win_the_ball(player) } }
  
        it { subject.score(player).should == :thirty }
      end
    end
  end

end