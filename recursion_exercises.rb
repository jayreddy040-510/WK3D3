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


# def deep_dup(arr)

    
#     arr.each do |sub|
#         return arr.dup if !sub.is_a?(Array)
    
    
# end



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

robot_parts = [1, [2], [3, [4]]]


print deep_dup(robot_parts)