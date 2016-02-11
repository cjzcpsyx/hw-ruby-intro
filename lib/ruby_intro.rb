# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort!
  case arr.length
  when 0
    0
  when 1
    arr[-1]
  else
    arr[-2] + arr[-1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0..arr.length-1
    arr_copy = arr.dup
    arr_copy.delete_at(i)
    if arr_copy.include?(n - arr[i])
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A[^AEIOU\W]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s =~ /\A[0-9]+/ && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn == '' || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    '$' + '%.2f' % @price
  end
end
