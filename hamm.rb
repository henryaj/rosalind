fragment1 = ARGV[0]
fragment2 = ARGV[1]

hamming_number = 0

fragment1.chars.each_with_index do |base, index|
  if base != fragment2[index]
    hamming_number += 1
  end
end

puts hamming_number
