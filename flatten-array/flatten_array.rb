class FlattenArray
	class << self
		def flatten arr , final = []
			arr.each do |x|
				flatten x , final if x.class == Array
				final.push(x) if x.class != Array
			end
			final.compact
		end
	end
end