require "pry-byebug"

dictionary = ["Below","Down","Go","goIng","yellow", "hello","there", "again", "say",
    "horn","how","howdy","iT","i","low","one","time","dog","again", "music","life",
    "own","part","partner","sit","jello","death", "live","haPpy","sad","okay",
    "resilience","word","too","much","art","dictIonary","bark","list","poem","plethora",
    "I","as","insitution","pleading","vocabulary","useless","strive","education",
    "portrayal","correction","debatable","tranquility","furthermore","questionable",
    "mask","freud"
]

subset = ["able","a","ask","here"]


dictionary.each_with_index do|word, index| 
    "#{index}: #{word.downcase}"
end


def separate_str(string)
    string.downcase.gsub(/[^a-z\s]/i, '').split()
end



def low_case(array)
    array.map do |word|
        word.downcase
    end
end



def substrings(string,array)
    new_array = low_case(array)
    new_string = separate_str(string)
    hash = Hash.new
    

    hash_keys = new_string.map do |member|
        hash[member] = 0
    end

    new_string.map do |word|
        hash[word] = new_array.select do |element|
                        element.include?(word)
                        end.length() 
    end
    return hash
end




p substrings(" A bunch of random words. Lets see how this goes", dictionary)


