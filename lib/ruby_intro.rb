# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  for i in arr
    result += i
  end
  result
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr != []
    arr.max(2).reduce(:+)
  else
    arr = 0
  end
end

def sum_to_n? arr, n
  # YOUR CODE HEREgem install rspec
  if arr != [] or arr.count(int) > 1
    arr.combination(2).find{ |x,y| x+y == n}
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  letters = ['a','e','i','o','u']
  s = s.downcase
  if s.length > 0 and /^[a-z]/.match(s) and !letters.include?(s[0])
    true
  else false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  binary_number = s.to_i(2) # Convert binary string to an integer
  if binary_number % 4 == 0 and /^[01]+$/.match(s)
    true
  else
    false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  # Getters and setters
  attr_accessor :isbn,:price

  def initialize(isbn,price)
    show_error(isbn, price)
    @isbn = isbn
    @price = price
  end

  def show_error(isbn,price)
    if isbn == ''
      raise ArgumentError.new('reject invalid ISBN number')
    end
    price=price.to_f
    if price <= 0
      raise ArgumentError.new('reject zero price or negative price') 
    end
  end

  def price_as_string
    format('$%.2f',@price)
  end

end
