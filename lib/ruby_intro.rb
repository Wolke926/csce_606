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
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
