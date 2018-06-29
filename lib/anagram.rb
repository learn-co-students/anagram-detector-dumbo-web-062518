# Your code goes here!
require 'pry'

class Anagram
attr_accessor :word, :breakdown, :broken_word

def initialize(word)
@word = word
@broken_word = split(@word)
end

def match(phrase)
  match = break_it_down(phrase).select {|word| word.sort.join == @broken_word.sort.join}
  match.map {|word| word.join}

end

def break_it_down(phrase)
  @breakdown = phrase.map {|word| split(word)}
end

def split(word)
  word.split(//)
end

end
