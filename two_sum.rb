arr = [0, 1, 5, 7]

def et_tu_brutus?(arr, target)
  (0...arr.length-1).each do |idx1|
    (idx1+1...arr.length).each do |idx2|
      return true if arr[idx1] + arr[idx2] == target
    end
  end
  false
end

# p et_tu_brutus?(arr, 6) # true
# p et_tu_brutus?(arr, 10) # false

def sort_two_sum?(arr, target)
  f_idx = 0
  e_idx = arr.length - 1
  arr = arr.sort

  (arr.length-1).times do |idx|
    case (arr[f_idx] + arr[e_idx]) <=> target
    when 0
      return true
    when 1
      e_idx -= 1
    when -1
      f_idx += 1
    end
  end

  false
end


# p sort_two_sum?(arr, 6) # true
# p sort_two_sum?(arr, 10) # false

def hash_two_sum?(arr, target)
  hash = Hash.new(false)

  arr.each do |num|
    value = target - num
    return true if hash[value]

    hash[num] = value
  end

  false
end

p hash_two_sum?(arr, 6) # true
p hash_two_sum?(arr, 10) # false
