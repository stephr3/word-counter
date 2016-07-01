require('pry')

class String
  define_method(:count_words_in) do |string_of_words|
    count = 0
    word = self
    string_of_words_array = string_of_words.split()
    string_of_words_array.each() do |string_word|
      if word.==(string_word)
        count = count.+(1)
      end
    end
  count
  end
end
