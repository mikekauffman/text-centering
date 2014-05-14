require 'spec_helper'
require_relative '../lib/text_centering'

describe CenterText do

  it "takes a string and returns a string with the text centered against the longest line" do
    input = <<-INPUT
this is a short line
this is a really long line that has a lot of characters
and this is
short
    INPUT
    text_input = CenterText.new(input)
    expected = <<-EXPECTED.chomp
                 this is a short line
this is a really long line that has a lot of characters
                      and this is
                         short
    EXPECTED
    expect(text_input.centered).to eq(expected)
  end

end