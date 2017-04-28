require('rspec')
require('word_definitions')

describe(Words) do

  describe('#word') do
    it("returns a user inputted word") do
      test_word = Words.new({:word => "Fish"})
      expect(test_word.word()).to(eq("Fish"))
    end
  end

  describe('#id') do
    it("returns id of a word") do
      test_word = Words.new({:word => "Fish"})
      expect(test_word.id()).to(eq(1))
    end
  end

  describe(".all") do
    it("returns an empty array") do
      expect(Words.all()).to(eq([]))
    end
  end
end
