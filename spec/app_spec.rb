ENV['RACK_ENV'] = 'test'

require_relative '../app'

require 'rspec'
require 'rack/test'

describe 'The HelloWorld App' do
  include Rack::Test::Methods

  let(:app) { Sinatra::Application }
  it 'returns ip address' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.content_type).to eq('text/plain;charset=utf-8')
    expect(last_response.body).to eq('127.0.0.1')
  end
end
