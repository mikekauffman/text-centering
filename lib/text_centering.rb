class CenterText
  def initialize(text)
    @text = text
  end

  def centered
    line_array = @text.lines
    longest_line_count = line_array.sort{|x, y| y.length <=> x.length}.first.length
    centered_line_array = []
    line_array.each do |line|
      if line.length < longest_line_count
        number_of_whitespaces_needed = ((longest_line_count - line.length)/2).to_i
        centered_line_array << ((" ")*number_of_whitespaces_needed + line)
      else
        centered_line_array << line
      end
    end
    centered_line_array.join(",").gsub(",","")
  end
end