string1 = ARGV[0]
string2 = ARGV[1]

hamming_number = 0

string1.chars.each_with_index do |base, index|
  if base != string2[index]
    hamming_number += 1
  end
end

puts hamming_number
