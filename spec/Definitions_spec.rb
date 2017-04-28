require('rspec')
require('definitions')

describe(Definitions) do

  describe('#definition') do
    it("returns a user inputted definition") do
      test_definition = Definitions.new({:definition => "an aquatic animal"})
      expect(test_definition.definition()).to(eq("an aquatic animal"))
    end
  end

  describe('#id') do
    it("returns id of a definition") do
      test_definition = Definitions.new({:definition => "an aquatic animal"})
      expect(test_definition.id()).to(eq(1))
    end
  end
end
