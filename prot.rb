CODONS = {
  "UUU" => "F", "UUC" => "F", "UUA" => "L", "UUG" => "L", "UCU" => "S", "UCC" => "S", "UCA" => "S", "UCG" => "S", "UAU" => "Y", "UAC" => "Y", "UGU" => "C", "UGC" => "C", "UGG" => "W", "GUU" => "V", "GUC" => "V", "GUA" => "V", "GUG" => "V", "GCU" => "A", "GCC" => "A", "GCA" => "A", "GCG" => "A", "GAU" => "D", "GAC" => "D", "GAA" => "E", "GAG" => "E", "GGU" => "G", "GGC" => "G", "GGA" => "G", "GGG" => "G", "AUU" => "I", "AUC" => "I", "AUA" => "I", "AUG" => "M", "ACU" => "T", "ACC" => "T", "ACA" => "T", "ACG" => "T", "AAU" => "N", "AAC" => "N", "AAA" => "K", "AAG" => "K", "AGU" => "S", "AGC" => "S", "AGA" => "R", "AGG" => "R", "CUU" => "L", "CUC" => "L", "CUA" => "L", "CUG" => "L", "CCU" => "P", "CCC" => "P", "CCA" => "P", "CCG" => "P", "CAU" => "H", "CAC" => "H", "CAA" => "Q", "CAG" => "Q", "CGU" => "R", "CGC" => "R", "CGA" => "R", "CGG" => "R", "UAG" => "", "UGA" => "", "UAA" => ""
}
STOP_CODONS = ["UAG", "UGA", "UAA"]

seq = ARGV[0].each_char.to_a
result = ""

while seq.any?
  triplet = seq.slice!(0,3)
  codon = CODONS.fetch(triplet.join)
  result += codon
  break if STOP_CODONS.include?(codon)
end

puts result



