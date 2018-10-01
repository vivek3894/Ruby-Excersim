class BinarySearch
	attr_accessor :list
	def initialize arr
		# unless sorted_array || array == array.sort
  #     raise ArgumentError, 'Array must be sorted'
  #      end

      @list = arr
	end

	def search_for var
		low = 0 
		high = @list.length-1
		ans = 'a'
		while low < high 
			mid = (low + high) /2
			if @list[mid] == var 
				ans =  mid
			elsif @list[mid] < var 
				low = mid+1
			else
				high = mid-1
			end
		end
	return ans if ans != 'a'
	raise RuntimeError, 'Element not found'	

	end
end