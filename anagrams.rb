first = "sdjfn"
second = 'sdfa'

def first_anagram?(first, second)
  new_arr =  first.chars.permutation.to_a
  new_arr.include?(second.chars)
end
# p first_anagram?(first, second)

def second_anagram?(first, second)
  alpha = first.chars
  first_chars = first.chars
  second_chars = second.chars
  alpha.each do |letter|
    second_chars.delete(letter) # n
    first_chars.delete(letter) # n
  end
  first_chars.empty? && second_chars.empty?
end

# p second_anagram?(first, second)


def third_anagram?(first, second)
  first_sorted = first.chars.sort
  second_sorted = second.chars.sort
  first_sorted == second_sorted
end

# p third_anagram?(first, second)

def fourth_anagram?(first, second)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  first.each_char {|let| hash1[let] += 1}
  second.each_char {|let| hash2[let] += 1}

  hash1 == hash2
end

# t = Time.now
# 10000000.times{
#   fourth_anagram?("elvis", "lives")
# }
# p Time.now - t
# ====> 60.98266

# p fourth_anagram?("elvis", "lives")
# p fourth_anagram?(first, second)

def best_anagram?(first, second)
  f = first.chars
  s = second.chars
  f == (f | s)
end

# t = Time.now
# 10000000.times{
#   best_anagram?("elvis", "lives")
# }
# p Time.now - t
# ===> 41.942363

p best_anagram?("elvis", "lives")
p best_anagram?(first, second)
