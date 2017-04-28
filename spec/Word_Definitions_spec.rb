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

  describe("#save") do
    it("saves a word into the array of words") do
      test_word = Words.new({:word => "Fish"})
      test_word.save()
      expect(Words.all()).to(eq([test_word]))
    end
  end

  describe(".clear") do
    it("clears array of words") do
      test_word = Words.new({:word => "Fish"})
      test_word.save()
      expect(Words.clear()).to(eq([]))
    end
  end
end
