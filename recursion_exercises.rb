# require 'byebug'

def range(start, last)

    return [] if last < start
    return [last] if last == start
  
        [start] + range(start+1,last) - [last]

   
    
    
end 

# print range(1,5)
# puts
# print range(5,9)


# recursion 1

# def exp(b, n)
#     return  1 if n == 0
#     return b  if n == 1
#     b * exp(b, n - 1)
# end

# def exp(b, n)
#     return  1 if n == 0
#     return b  if n == 1
    
#     if n % 2 == 0
#         exp(b, n) = exp(b, n / 2) ** 2 
#     else
#         exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2)
#     end
# end
# exp(b, 0) = 1
# exp(b, n) = b * exp(b, n - 1)





def deep_dup(data)

    # return [data] if !data.is_a?(Array)
    dupped_arr = []
    data.each do |ele|
        if ele.is_a?(Array)
            dupped_arr << deep_dup(ele)
        else
            dupped_arr << ele
        end
    end

    dupped_arr
    # dupped_arr << 1 << 2
    # p data 
    # puts
    # p dupped_arr     
    end









    # dupped_arr = []
    # i = 0
    # while !arr.empty?
    #     if arr[i].is_a?(Array)
    #         arr[i].each do |ele|
    #             dupped_arr << ele
    #         end
    #         i += 1
    #         deep_dup(arr[i + 1])
    #     else
    #         dupped_arr << arr[i]
    #         deep_dup(arr[i + 1])
    #         i += 1
    #     end 
    # end

    # dupped_arr
    
# end

# robot_parts = [1, [2], [3, [4]]]


# print deep_dup(robot_parts)

# Fibonacci
# Write a recursive and an iterative Fibonacci method. 
# The method should take in an integer n and return the first n Fibonacci numbers in an array.

# You shouldn't have to pass any arrays between methods; you should be able to do this 
#just passing a single argument for the number of Fibonacci numbers requested.

def fib_to_n(n)
    return [] if n == 0 
    return [0] if n == 1
    return [0, 1] if n == 2

   fibArr = fib_to_n(n - 1)

   fibArr << fibArr[-1] + fibArr[-2]
end


# p fib_to_n(6)

def bsearch(arr, target)
    return nil if arr.length == 1 && target != arr[0]
    mid = arr.length/2
    # debugger
    if target == arr[mid] 
        return mid
    elsif target < arr[mid]
        return bsearch(arr[0..(mid-1)], target)
    elsif target > arr[mid]
        return nil if bsearch(arr[(mid+1)..-1], target) == nil 
        return bsearch(arr[(mid+1)..-1], target) + 1 + mid
    end
    
    nil
end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# # p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge(left, right)
    
    merged = []
    
    while left.length > 0 and right.length > 0
        if left[0] > right[0]
            merged << right.shift 
        else
            merged << left.shift
        end
    end

    merged + left + right

end


require "byebug"


def merge_sort(arr)
    # print arr
    return [] if arr.length == 0
    return arr if arr.length == 1
    # return [arr[0], arr[1]] if arr.length == 2
    mid = arr.length/2
    # debugger
    left = (arr[0...mid])
    right = (arr[mid..-1])
    x = merge_sort(left)
    y = merge_sort(right) 
    merge(x,y)
   

end

p merge_sort([4,5,6,7,2,3,4,14,128,124,23,44,56,32,15,2,7,5,3])