require "pry-byebug"

dictionary = ["Below","Down","Go","goIng","yellow", "hello","there", "again", "say",
    "horn","how","howdy","iT","i","low","one","time","dog","again", "music","life",
    "own","part","partner","sit","jello","death", "live","haPpy","sad","okay",
    "resilience","word","too","much","art","dictIonary","bark","list","poem","plethora",
    "I","as","insitution","pleading","vocabulary","useless","strive","education",
    "portrayal","correction","debatable","tranquility","furthermore","questionable",
    "mask","freud"
]



dictionary.each_with_index do|word, index| 
    "#{index}: #{word.downcase}"
end

string = "Hello. How are you? 1 2 4 five. Mothaf***a"

p string.downcase.gsub(/[^a-z\s]/i, '').split()