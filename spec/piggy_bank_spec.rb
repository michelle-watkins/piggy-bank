require 'piggy_bank'

describe PiggyBank do
  it { is_expected.to respond_to(:add_coins).with(1).argument }
  it { is_expected.to respond_to(:shake_piggy_bank) }
  it { is_expected.to respond_to(:break_piggy_bank) }

  describe '#add_coins' do
    it 'should add coins to the piggy bank' do
      expect(subject.add_coins(1)).to eq("Coins in your piggy bank: 1")
    end
  end

  describe '#shake_piggy_bank' do
    it 'should cling if the piggy bank contains coins' do
      subject.add_coins(4)
      expect(subject.shake_piggy_bank).to eq("Cling")
    end

    it 'should return a message if the piggy bank is empty' do
      expect(subject.shake_piggy_bank).to eq("Remember to put coins in your piggy bank!")
    end
  end

  describe '#break_piggy_bank' do
    it 'should return the number of coins when the piggy bank is broken' do
      subject.add_coins(6)
      expect(subject.break_piggy_bank).to eq("Coins you put in your piggy bank: 6")
    end
  end
end