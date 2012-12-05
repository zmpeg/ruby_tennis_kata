require 'set'

require_relative 'tennis_game'

describe TennisGame do
  
  let(:players) { [:red, :blue] }

  subject { TennisGame.new(players) }
  
  describe "#players" do
    its(:players) { should == players }
  end
  
  describe "#win_the_ball" do
    context "First round" do
      context "Red scores" do
        before { subject.win_the_ball(:red) } 
        its(:score) { should == Score.new(:fifteen, :love) }
      end
      context "Blue scores" do
        before { subject.win_the_ball(:blue) } 
        its(:score) { should == Score.new(:love, :fifteen) }
      end
    end
  end
    
  # context "Second round" do
  #   [:red, :blue].each do |player|
  #     context "#{player} scores twice" do
  #       before { 2.times { subject.win_the_ball(player) } }
  # 
  #       it { subject.score(player).should == :thirty }
  #     end
  #   end
  # end

end