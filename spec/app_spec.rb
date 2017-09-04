describe App do
  include Rack::Test::Methods

  subject(:app) { described_class.new }

  it 'responds to /set request' do
    get '/set'
    expect(last_response.ok?).to be true
  end

end
