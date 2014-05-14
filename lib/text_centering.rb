class CenterText
  def initialize(text)
    @text = text
  end

  def centered
    line_array = @text.lines
    longest_line_count = line_array.sort{|x, y| y.length <=> x.length}.first.length
    line_array.map {|line| line.center(longest_line_count).rstrip }.join("\n")
  end

end