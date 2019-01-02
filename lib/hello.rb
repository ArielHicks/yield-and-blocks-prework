#Ruby Blocks
10.times do 
  p "my name"
end

#the example above is a built in Ruby block 
# Now, we will build our own block 

def times number
  number * 2 
end

times 2 do 
  
end

puts"========="

#what if we wanted to make our block more dynamic?
def times number 
  number * yield 
end

times 2 do 
  4       #THIS ends up being the yield value in the def blocke above 
end

puts"==============="

def times number
  number * yield 
end

times 2 do 
  a = 4
  b = 8
  c = a + b     #REMEMBER that Ruby only returns the last line in the block, c = the yield 
end
#our answer is 24 



