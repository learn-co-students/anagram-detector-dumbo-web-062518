class Anagram
  def initialize(string)
    @string = string
  end

  def match(list)
    list.select { |word| @string.chars.sort == word.chars.sort}
  end
end
