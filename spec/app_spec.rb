describe App do
  include Rack::Test::Methods

  subject(:app) { described_class }

  it 'responds to /set request' do
    get '/set'
    expect(last_response).to be_ok
  end

  it 'responds to /get request' do
    get '/get'
    expect(last_response).to be_ok
  end

  it 'returns the queried value in html body' do
    get '/set?somekey=somevalue'
    get '/get?key=somekey'
    expect(last_response.body).not_to include('somekey')
    expect(last_response.body).to include('somevalue')
  end
end
