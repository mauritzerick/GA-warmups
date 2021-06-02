# def minimax_sum arr
#     p sorted_arr = arr.sort 

#     p min_sum = sorted_arr.take(arr.size-1).inject(&:+)
#     p max_sum = sorted_arr.drop(1).inject(&:+)
#     p sorted_arr

#     puts "min_sum: #{min_sum}; max_sum: #{max_sum}"
# end

# minimax_sum[1,9,5,3,7]

def minimax_sum arr,num
    p sorted_arr = arr.sort  
    
    p min_sum = sorted_arr.take(num).inject(&:+)
    p max_sum = sorted_arr.drop(arr.size-num).inject(&:+)
    puts "min_sum: #{min_sum}; max_sum: #{max_sum}"

end
minimax_sum [1,9,5,3,7],3
    