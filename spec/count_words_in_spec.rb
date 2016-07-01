require('rspec')
require('count_words_in')

describe('String#count_words_in') do
  it('returns 0 when two single words are compared and the words are not the same') do
    expect('pet'.count_words_in('dog')).to(eq(0))
  end
  it('returns 1 when two single words are compared and the words are the same') do
    expect('pet'.count_words_in('pet')).to(eq(1))
  end
  it('returns 0 when a word is compared with a string of words and the target word is not included in the string of words') do
    expect('pet'.count_words_in('dog store')).to(eq(0))
  end
  it('returns 1 when a word is compared with a string of words and the target word is included in the string of words') do
    expect('pet'.count_words_in('pet store')).to(eq(1))
  end
  it('can handle multiple occurrences of a word within a string of words') do
    expect('pet'.count_words_in('pet a pet dog in the pet store')).to(eq(3))
  end
  it('can handle capitalized user entries') do
    expect('pet'.count_words_in('Pet a pet dog in the Pet Store')).to(eq(3))
  end
  it('can handle mixed case user entries') do
    expect('pet'.count_words_in('Pet a PET dOg in the pEt STOre')).to(eq(3))
  end
  it('can handle user entries with numbers') do
    expect('pet'.count_words_in('Pet 2 pet dogs in the pet store')).to(eq(3))
  end
  it('can handle user word string with punctuation') do
    expect('pet'.count_words_in('Pet the pet!')).to(eq(2))
  end
  it('can handle user word with punctuation') do
    expect('pet'.count_words_in('Pet the pet!')).to(eq(2))
  end
end
