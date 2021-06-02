# DNA is represented by an alphabet of the following symbols: 'A', 'C', 'G', and 'T'.
# Each symbol represents a nucleotide, which is a fancy name for the particular molecules that happen to make up a large part of DNA.
# Write a program that will tell you how many times each nucleotide occurs in a string.
# It should also tell you if a character in the string is not a valid nucleotide.

# require 'pry'
# nucleotide = {
#     :symbols => ["A", "C", "G", "T"]
# }

# binding.pry

# nucleotide "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"

# require 'pry'
# a = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"

# a.chars.group_by(&:chr).map { |k, v| [k, v.size] }s

# binding.pry

#Class version

def count_nucleotides 
    nucleotides = {
        'A' => 0,
        'C' => 0,
        'G' => 0,
        'T' => 0,
        'error' => 0
    }
    string.each_char do |char|
        if nucleotides.key.include? char
            nucleotides[char] + 1
        else
            nucleotides['error'] += 1
        end
        p nucleotides
        nucleotides.map { |k, v| puts "#{k}: #{v}" } #key value
end
count_nucleotide "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
