require('rspec')
require('definitions')

describe(Definitions) do
  before do
    Definitions.clear()
  end

  describe('#definition') do
    it("returns a user inputted definition") do
      test_definition = Definitions.new({:definition => "an aquatic animal"})
      expect(test_definition.definition()).to(eq("an aquatic animal"))
    end
  end

  describe('#id') do
    it("returns id of a definition") do
      test_definition = Definitions.new({:definition => "an aquatic animal"})
      expect(test_definition.id()).to(eq("definition1"))
    end
  end

  describe(".all") do
    it("returns an empty array") do
      expect(Definitions.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a word into the array of words") do
      test_definition = Definitions.new({:definition => "an aquatic animal"})
      test_definition.save()
      expect(Definitions.all()).to(eq([test_definition]))
    end
  end

  describe(".clear") do
    it("clears array of definitions") do
      test_definition = Definitions.new({:definition => "an aquatic animal"})
      test_definition.save()
      expect(Definitions.clear()).to(eq([]))
    end
  end

  describe(".find") do
    it("finds a definition in the array by it's id") do
      test_definition = Definitions.new({:definition => "an aquatic animal"})
      test_definition.save()
      test_definition2 = Definitions.new({:definition => "a limbless and cold-blooded animal"})
      test_definition2.save()
      expect(Definitions.find(test_definition2.id())).to(eq(test_definition2))
    end
  end
end
