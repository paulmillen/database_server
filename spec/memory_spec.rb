describe Memory do

  let(:params) { double(:params) }
  subject(:memory) { described_class.new(:params) }

  it 'exists' do
    expect(memory).not_to be_nil
  end

  it 'instantiates with one argument' do
    expect(memory).not_to be_nil
  end

  describe '#data' do

    it 'receives the instantiated argument' do
      expect(memory.data).to eq :params
    end
  end
end
