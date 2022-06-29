def range(start, last)

    return [] if last < start
    return [last] if last == start
  
        [start] + range(start+1,last) - [last]

   
    
    
end 

print range(1,5)
puts
print range(5,9)
