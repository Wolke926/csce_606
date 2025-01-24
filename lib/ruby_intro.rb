# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  
  largest_two = arr.max(2)
  largest_two.sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  return false if arr.length < 2
  
  a = Set.new
  
  arr.each do |num|
    return true if a.include?(number - num)
 
    a.add(num)
  end
  
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

require 'set'

def starts_with_consonant?(string)
  vowels = Set.new(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'])
  return false if string.empty? || !string[0].match?(/[a-zA-Z]/)
  !vowels.include?(string[0])
end

def binary_multiple_of_4?(s)
  s.match?(/\A[01]+\z/) && s.to_i(2) % 4 == 0
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn,price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0

    @isbn = isbn
    @price = price

  end
  def price_as_string
    format("$%.2f",@price)
  end

end
