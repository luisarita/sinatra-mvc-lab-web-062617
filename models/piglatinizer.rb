class PigLatinizer
    def piglatinize(word)
        first_part = word.split(/[aeiouAEIOU]/).first
        if first_part.nil? || first_part == ""
            first_part = ""
            moved_part = "w"
        else
            moved_part = first_part 
        end
        word[first_part.length..word.length] + moved_part + "ay"
    end
    def to_pig_latin(phrase)
        phrase.split(" ").map do |word|
            piglatinize(word)
        end.join(" ")
    end
end