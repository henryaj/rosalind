require 'ostruct'

SAMPLE_DATA = %{>Rosalind_6404
CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCC
TCCCACTAATAATTCTGAGG
>Rosalind_5959
CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCT
ATATCCATTTGTCAGCAGACACGC
>Rosalind_0808
CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGAC
TGGGAACCTGCGGGCAGTAGGTGGAAT}

raw = SAMPLE_DATA.split("\n")

current_name = ""
highest_gc = []

raw.each do |line|
  if line.start_with? '>'
    current_name = line
  else
    calculate_gc_content(line)
  end
end

fasta_matcher = Regexp.match(/>Rosalind_\d{4}/)

gc_count = seq.count('C') + seq.count('G')
gc_fract = gc_count / seq.length
