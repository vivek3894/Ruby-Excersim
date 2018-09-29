class Phrase

	def initialize(word)
       @curr_word = word
	end

	def word_count
		word_test = @curr_word.split(' ')
		word_count_hash = Hash.new(0)
		word_test.each do |x|
			word_count_hash[x]+=1
		end
		word_count_hash
	end
end