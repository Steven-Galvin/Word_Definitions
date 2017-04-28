require('rspec')
require('word')

describe(Words) do
  before do
    Words.clear()
  end

  describe('#word') do
    it("returns a user inputted word") do
      test_word = Words.new({:word => "Fish"})
      expect(test_word.word()).to(eq("Fish"))
    end
  end

  describe('#id') do
    it("returns id of a word") do
      test_word = Words.new({:word => "Fish"})
      expect(test_word.id()).to(eq("word1"))
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

  describe(".find") do
    it("finds a word in the array by it's id") do
      test_word = Words.new({:word => "Fish"})
      test_word.save()
      test_word2 = Words.new({:word => "Tank"})
      test_word2.save()
      expect(Words.find(test_word2.id())).to(eq(test_word2))
    end
  end

  describe("#definitions") do
    it("returns an array of definitions") do
      test_word = Words.new({:word => "Fish"})
      expect(test_word.definitions()).to(eq([]))
    end
  end

  describe("#add_definition") do
    it("adds definition into definitions array") do
      test_word = Words.new({:word => "Fish"})
      test_definition = Definitions.new({:definition => "an aquatic animal"})
      test_word.add_definition(test_definition)
      expect(test_word.definitions()).to(eq([test_definition]))
    end
  end

  describe("#clear_definitions") do
    it("clears definitions array") do
      test_word = Words.new({:word => "Fish"})
      test_definition = Definitions.new({:definition => "an aquatic animal"})
      test_word.add_definition(test_definition)
      test_word.clear_definitions()
      expect(test_word.definitions()).to(eq([]))
    end
  end
end
