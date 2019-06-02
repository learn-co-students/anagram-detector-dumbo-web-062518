# Your code goes here!
require 'pry'
class Anagram
	attr_reader :word
	def initialize(word)
		@word = word
	end

	def alphabetical_word(word)
		word.split("").sort.join
	end

	def match(array)
		hash_of_words = {}
		sorted_word = @word.split("").sort.join
		split_and_sorted_array = array.map do |word|
			hash_of_words[alphabetical_word(word)] = []
		end
		array.each do |word|
			if hash_of_words[alphabetical_word(word)]
				hash_of_words[alphabetical_word(word)] << word
			end
		end

		hash_of_words.keys.include?(sorted_word) ? hash_of_words[sorted_word] : []
		# binding.pry
	end
end
