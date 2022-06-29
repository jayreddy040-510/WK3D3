def range(start, last)

    return [] if last < start
    return [last] if last == start
  
        [start] + range(start+1,last) - [last]

   
    
    
end 

# print range(1,5)
# puts
# print range(5,9)


# recursion 1

def exp(b, n)
    return  1 if n == 0
    return b  if n == 1
    b * exp(b, n - 1)
end

def exp(b, n)
    return  1 if n == 0
    return b  if n == 1
    
    if n % 2 == 0
        exp(b, n) = exp(b, n / 2) ** 2 
    else
        exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2)
    end
end
# exp(b, 0) = 1
# exp(b, n) = b * exp(b, n - 1)

