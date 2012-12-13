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

    context 'When score is thirty love' do
      let(:score) { Score.new(2, 0) }
      subject { ScoreTranslator.new(score).translate }
      it { should == 'thirty love'}
    end

    context 'When score is forty love' do
      let(:score) { Score.new(3, 0) }
      subject { ScoreTranslator.new(score).translate }
      it { should == 'forty love'}
    end

    context 'When score is duece at 4-4' do
      let(:score) { Score.new(4, 4) }
      subject { ScoreTranslator.new(score).translate }
      it { should == 'deuce'}
    end
  end
  
end