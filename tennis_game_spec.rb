require 'set'

require_relative 'tennis_game'

describe TennisGame do
  
  let(:players) { [:red, :blue] }
  let(:score)   { double(Score) }
  let(:translator) { double(ScoreTranslator) }
  
  subject { TennisGame.new(players) }

  before do
    Score.stub(:new).and_return(score)
  end
  
  describe "#players" do
    its(:players) { should == players }
  end
  
  describe "#win_the_ball" do
      before do
        score.should_receive(:winner?)
        score.should_receive(:point_for).with(:server)
      end

      it { subject.win_the_ball(:red) }
  end
  
  describe '#score' do
    let(:expected) { 'Weird result for a match' }
    
    before do 
      ScoreTranslator.stub(:new).with(score).and_return(translator)
      translator.stub(:translate).and_return(expected)
    end
    
    its(:score) { should == expected }
  end
  
end