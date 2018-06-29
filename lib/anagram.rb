# Your code goes here!
require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(data)
    sorted_word = @word.chars.sort.join
    data.select do |compare|
      compare.chars.sort.join == sorted_word
    end
  end

  # binding.pry
end
