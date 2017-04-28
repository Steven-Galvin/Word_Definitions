class Definitions
  attr_reader(:definition, :id)

  @@definitions_array = []

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
    @id = @@definitions_array.length().+(1)
  end
end
