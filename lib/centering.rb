class Centering
  def initialize(input)
    @input = input
  end
  def center_text
    lines = @input.lines
    long_line = lines.sort{|x, y| x.length <=> y.length}.last.length
    lines.map{|line| line.center(long_line).rstrip}.join("\n")
  end
end