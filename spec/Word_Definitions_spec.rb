require('rspec')
require('word_definitions')

describe(Words) do

  describe('#word') do
    it("returns a user inputted word") do
      test_word = Words.new("Fish")
      expect(test_word.word()).to(eq("Fish"))
    end
  end
end
