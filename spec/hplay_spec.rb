require './lib/hplay'

describe 'Human Play Class Rspec::' do

  context 'Class HPlay::' do
    it 'Check for instance of the class' do
     expect(HPlay.new('Tom','Jerry')).to be_instance_of(HPlay)
    end
    it 'Check for the class instance var through call to class Method' do
      hp = HPlay.create('Tom','Jerry')
      expect(hp.p1).to eq 'Tom'
    end
    it 'Check for the class method' do
      hp = HPlay.create('Tom','Jerry')
      expect(HPlay.instance).to be_instance_of HPlay
    end

    it 'Check for the select method' do
      hp = HPlay.create('Tom','Jerry')
      srand 0
      hp.select('Tom')
      hp.select('Jerry')
      expect(hp.selection).to include('Tom','Jerry')
    end

    it 'Check for the decision Method' do
      hp = HPlay.create('Tom','Jerry')
      srand 0
      hp.select('Tom')
      hp.select('Jerry')
      expect(hp.decision).to eq 'Jerry Wins!!'
    end

  end
end
