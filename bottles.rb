# Define a recursive function that takes an argument n 
#and prints "n bottles of beer on the wall", 
#{}"(n-1) bottles of beer on the wall", ..., 
#{}"no more bottles of beer on the wall".
def beer(n)
  if n == 1
    puts "last bottle on the wall"
    puts "no more bottles of beer on the wall"
    return
  end
  puts "#{n} bottles of beer on the wall"
  beer(n-1)
end

beer(12)