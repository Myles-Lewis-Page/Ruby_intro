# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  	len = arr.length
  	res = 0
  	if len > 0
    		for num in arr
      			res+=num
    		end
    		return res
  	else
    		return 0;
  	end
end

def max_2_sum arr
	max1 = 0
 	max2 = 0
 	len = arr.length
  	res = 0;
  
  	if len > 1
    		arr.sort!
    		max1 = arr.pop
    		max2 = arr.pop
    		res = max1 + max2
    		return res
    
  	elsif len == 1
    		return arr[0]
  	else
    		return 0
  	end
  	return res
end

def sum_to_n? arr, n
	res = false
	if arr.length > 1
		for i in 1..arr.length-1
			for j in 0..i-1
				if arr[i]+arr[j]==n
					res = true
					break
				end
			end
		end
	end
	return res
end

# Part 2

def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant? s
	if /^[^aeiou\W]/i.match(s) == nil
    		return false
  	end
  	return true
end

def binary_multiple_of_4? s
	if(s.to_s =~ /\b[01]+\b/) && (s.to_i % 4 ==0)
		return true
	end
	return false
end

# Part 3

class BookInStock
	attr_accessor :isbn, :price

  	def initialize(isbn, price)
    	if (isbn.empty?) || (price <= 0)
      		raise ArgumentError
    	end
    
    	@isbn = isbn
    	@price = price
    
  	end

  	def price_as_string
    		"$%.2f" % @price
  	end
end
