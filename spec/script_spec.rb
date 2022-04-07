# frozen_string_literal: true

require 'script'

RSpec.describe 'Coding exercise' do
  it 'expects foo to return bar' do
    expect(foo).to eq 'bar'
  end

  it 'expects Test#print to return prepended `message:`' do
    expect(Test.new.print('foo')).to eq 'message: foo'
  end
end
