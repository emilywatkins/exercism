class Complement
  def self.of_dna(dna)
    complement_hash = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    dna_array = dna.split('')
    rna_array = []

    dna_array.each do |nucleotide|
      if complement_hash.has_key?(nucleotide)
        rna_array.push(complement_hash[nucleotide])
      else
        rna_array = ['']
        break
      end
    end
    transcription = rna_array.join('')
  end
end

module BookKeeping
  VERSION = 4
end
