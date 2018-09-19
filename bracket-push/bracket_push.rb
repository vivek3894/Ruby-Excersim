class Brackets
	class << self
		def paired? brack
			left = []
			chars = brack.split('')
			map = Hash.new
			map[')'] = '('
			map['}'] = '{'
			map[']'] = '['
			chars.each do |ch|
			  if ch == '(' || ch == '[' || ch == '{'
			  	left.push(ch)
			  elsif ch == ')' || ch == ']' || ch == '}'
			  	return false if left.empty? || left.last != map[ch]
			  	left.pop
			  end
			end
			return true if left.empty?
			false
		end
	end
end