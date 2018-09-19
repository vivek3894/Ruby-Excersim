class Bst
		attr_accessor :data , :left , :right
		def initialize(data)
			@data = data
			@left = nil
			@right = nil
		end

		def insert data
			return if self == nil
			if data <= @data
				if @left == nil
					@left = Bst.new(data)
					return
				else
					@left.insert data
				end
			else
				if @right == nil
					@right = Bst.new(data)
					return
				else
					@right.insert data
				end
			end
		end

		def each &block
			return enum_for(:each) unless block_given?
			@left.each &block if left != nil
			yield @data
			@right.each &block if right != nil
		end
end
