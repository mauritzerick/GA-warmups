
def hamming_distance str1, str2
    result = 0
 
    str1.split('').each_index do |i|
        result += 1 if str1[i] != str2[i]
    end

    p result
end

hamming_distance 'GAGCCTACTAACGGGAT', 'CATCGTAATGACGGCCT'