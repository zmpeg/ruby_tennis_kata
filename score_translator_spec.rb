require_relative 'score_translator'

describe ScoreTranslator do
  
  describe '#translate' do
    context 'When score is new' do
      let(:score) { Score.new }
      subject { ScoreTranslator.new(score).translate }
      it { should == 'love love'}
    end
    
    context 'When score is fifteen love' do
      let(:score) { Score.new(1, 0) }
      subject { ScoreTranslator.new(score).translate }
      it { should == 'fifteen love'}
    end
  end
  
end