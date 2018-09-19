class PhoneNumber
	class << self
		def clean number
			number.gsub!(/[^0-9A-Za-z]/, '')
			if (number.length == 11 && number[0] == '1') 
				number = number[1..-1]
			elsif number.length < 10 || number.length > 10 || number[0] < '2'
				return nil
			end
			number
		end
	end
end