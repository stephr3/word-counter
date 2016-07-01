require('pry')

class String
  define_method(:count_words_in) do |string_of_words|
    count = 0
    if self.==(string_of_words)
      count = count.+(1)
    end
  count
  end
end
