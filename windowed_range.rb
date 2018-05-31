
def windowed_max_range(arr, window_size)
  current_max = arr.first

  (0...arr.length - window_size+1).each do |idx|
    value = arr[idx, window_size].minmax.inject(:-).abs

    current_max = (value > current_max ? value : current_max)
  end
  current_max
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) #== 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #== 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) #== 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) #== 6 # 3, 2, 5, 4, 8


def my_queue

end
