# Complementing a Strand of DNA

COMPLEMENT = {
  "A" => "T",
  "C" => "G",
  "G" => "C",
  "T" => "A"
}

def complement(dna)
  dna.each_char.map do |base|
    COMPLEMENT[base]
  end
end

strand = ARGV[0]

puts complement(strand.reverse).join
