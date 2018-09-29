class Element

  attr_accessor :datum , :next

    def initialize data
    	@datum = data
    	@next = nil
    end


end


class SimpleLinkedList
   attr_accessor :all_ele

    def initialize arr = nil
       if arr == nil
    	@all_ele = nil 
       else
       	arr.each do |x|
       		new_ele = Element.new(x)
       		new_ele.next = @all_ele
       		@all_ele = new_ele
       	end
       end
    end

	def push ele 
         ele.next = @all_ele
         @all_ele = ele
       self
	end

	def pop
	   return nil unless @all_ele
       next_ele = @all_ele
       @all_ele = next_ele.next
       return_ele = next_ele
       return_ele = nil
       next_ele
	end
   
   def to_a
   	arr = []
   	 while @all_ele
      arr << @all_ele.datum
      @all_ele = @all_ele.next
   	 end
    arr
   end

end
