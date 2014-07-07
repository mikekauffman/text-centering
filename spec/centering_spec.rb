require 'rspec'
require_relative '../lib/centering'

describe Centering do
  it 'centers text' do
    input = <<INPUT
This is a line
This is a longer line with more words
This is
the end of
the test
INPUT
    expected = <<INPUT.chomp
           This is a line
This is a longer line with more words
               This is
             the end of
              the test
INPUT
    centering = Centering.new(input)
    expect(centering.center_text).to eq expected
  end
end