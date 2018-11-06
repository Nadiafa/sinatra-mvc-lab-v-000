class PigLatinizer
  attr_accessor :phrase
  
  def initialize(phrase)
    @phrase = phrase
  end 
  
  def piglatinize
    "THIS IS THE RESULT"
    
    words = phrase.split(" ")
  
    words.each do |w|
      first_letter = w[0]
      if !first_letter.match(/[aAeEiIoOuU]/)
         w.split("").rotate(1).join("")
      elsif first_letter.match(/[aAeEiIoOuU]/)
        w.concat("w")
      else 
        w
      end 
    end
    
    
    words.each do |w|
      if /^[^aeiou\W]/i.match(w)
        w = w.split("").rotate(1).join("")
        w
      else 
        w = w.concat("w")
      end
    end
    
    words.each do |w|
      case 
      when /^[^aeiou\W]/i.match(w)
        w = w.split("").rotate(1).join("")
      else
        w = w.concat("w")
      end
    end
    
    
    
    
    
    
  phr
    if /^[^aeiou\W]/i.match(words)
      return false 
    else
      return true
    end
    
    
    
    
    words.join(" ")
  end 
end



# def piglatinize(input_str)
#     x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
#     puts x
#     x
#   end

#   private

#   def consonant?(char)
#     !char.match(/[aAeEiIoOuU]/)
#   end

#   def piglatinize_word(word)
#     # word starts with vowel
#     if !consonant?(word[0])
#       word = word + "w"
#     # word starts with 3 consonants
#     elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
#       word = word.slice(3..-1) + word.slice(0,3)
#     # word starts with 2 consonants
#     elsif consonant?(word[0]) && consonant?(word[1])
#       word = word.slice(2..-1) + word.slice(0,2)
#     # word starts with 1 consonant
#     else
#       word = word.slice(1..-1) + word.slice(0)
#     end
#     word << "ay"
#   end

#   def piglatinize_sentence(sentence)
#     sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
#   end