require_relative 'score_translator'

describe ScoreTranslator do
  
  describe '#translate' do
    let(:score) { Score.new(0, 0) }
    subject { ScoreTranslator.new(score).translate }
    it { should == 'love love'}
  end
  
end