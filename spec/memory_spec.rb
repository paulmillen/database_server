describe Memory do
  let(:params) { double(:params) }
  subject(:memory) { described_class.new(:params) }

  it 'instantiates with one argument' do
    expect(memory).not_to be_nil
  end

  describe '#return_value' do
    subject(:memory) { described_class.new( { somekey: 'somevalue' }) }

    it 'returns the set parameter value given the get parameter query string' do
      expect(memory.return_value( { key: :somekey } )).to eq 'somevalue'
    end
  end

  describe '.create' do
    subject(:memory) { described_class.create(:params) }

    it 'instantiates a new memory object' do
      expect(memory).to respond_to(:return_value)
    end
  end

  describe '.instance' do
    let(:memory) { described_class }

    it 'returns a variable storing an instantiated memory object' do
      memory_object = memory.create(:params)
      expect(memory.instance).to eq memory_object
    end
  end
  
end
