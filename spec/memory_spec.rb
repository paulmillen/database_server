describe Memory do
  let(:params) { double(:params) }
  subject(:memory) { described_class.new(:params) }

  it 'instantiates with one argument' do
    expect(memory).not_to be_nil
  end

  describe '#data' do
    it 'receives the instantiated argument' do
      expect(memory.data).to eq :params
    end
  end

  describe '.create' do
    let(:memory) { described_class.create(:params) }

    it 'instantiates a new memory object' do
      expect(memory).not_to be_nil
    end

    it 'accepts an object and defines it as an instance variable' do
      expect(memory.data).to eq :params
    end
  end

  describe '.instance' do
    let(:memory) { described_class }

    it 'returns a variable storing an instantiated memory object' do
      memory.create(:params)
      expect(memory.instance.data).to eq :params
    end
  end

end
