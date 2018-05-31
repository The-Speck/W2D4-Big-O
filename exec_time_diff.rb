 # list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
 # list1 = [5, 3, -7]
 # list2 = [2, 3, -6, 7, -6, 7]
 # list3 = [-5, -1, -3]

 def slow_compare(arr)
   max = arr.first
   arr.each do |el1|
     arr.each do |el2|
       max = (el1 < max ? el1 : max)
     end
   end
   max
 end
 #
 # p slow_compare(list)

def better_compare(arr)
  max = arr.first

  arr.each do |el|
    max = (el < max ? el : max)
  end

  max
end
#
# p better_compare(list)

def largest_sum(arr)
  sub_arr = []
  (0...arr.length-1).each do |idx1|
    (idx1...arr.length).each do |idx2|
      sub_arr.push(arr[idx1..idx2].inject(:+))
    end
  end

  sub_arr.max

end
#
# p largest_sum(list1)
# p largest_sum(list2)
# p largest_sum(list3)



def largest_sum_better(arr)
  largest_sum = arr.first
  current = arr.first

  (1...arr.length).each do |idx|
    if current < 0
      current = 0
    end

    current += arr[idx]
    
    if current > largest_sum
      largest_sum = current
    end
  end

  largest_sum
end

list1 = [-5, -1, -3]
list2 = [2, 3, -6, 7, -6, 7]
list3 = [5, 3, -7]

p largest_sum_better(list1)
p largest_sum_better(list2)
p largest_sum_better(list3)
