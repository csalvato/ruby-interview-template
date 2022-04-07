# frozen_string_literal: true

require 'script'

RSpec.describe 'Coding exercise' do
  it 'expects foo to return bar' do
    expect(foo).to eq 'bar'
  end

  it 'expects Test#print to return prepended `message:`' do
    expect(Test.new.print('foo')).to eq 'message: foo'
  end

  it 'expects basic Faraday get to work' do
    response = Faraday.get('http://httpbingo.org')
    expect(response.status).to eq 200
    expect(response.headers).to have_key 'server'
    expect(response.body).to include '!DOCTYPE'
  end

  it 'expects sophisticated Faraday setup for post to work' do
    conn = Faraday.new(url: 'http://httpbingo.org', headers: { 'Content-Type' => 'application/json' })

    response =
      conn.post('/post') do |req|
        req.params['limit'] = 100
        req.body = { query: 'chunky bacon' }.to_json
      end

    expect(response.status).to eq 200
    expect(response.headers).to have_key 'server'
    expect(JSON.parse(response.body)).to have_key 'data'
  end
end
