require "pry"

class PigLatinizer

  def piglatinize(phrase)
    words = phrase.split
    processed_words = []
    words.each do |word|
      vowel_index = word.index(/[aeiouAEIOU]/) || 0
      if vowel_index == 0
        processed_words << "#{word}way"
      else
        pre = word[0,vowel_index]
        post = word[vowel_index, word.length]
        processed_words << "#{post}#{pre}ay"
      end
    end
    processed_words.join(" ")
  end

  def hi
    "hello piggie"
  end

end