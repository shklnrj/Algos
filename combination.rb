# algorithm to print all the possible permutations of a string
# takes a string and prints all possible permutations

def swap(input, initial, final)
  temp = input[initial]
  input[initial] = input[final]
  input[final] = temp
end

def combinations(input, left, right)
  if left == right
    puts input
  else
    for i in (left..right) do
      swap(input, left, i)
      combinations(input, left+1, right)
      swap(input, left, i)
    end
  end
end

puts "Enter the word for permutations to be created..."
input = gets.chomp
puts "Going to print all the possible combinations...."
combinations(input,0, input.length-1)
