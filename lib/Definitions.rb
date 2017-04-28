class Definitions
  attr_reader(:definition, :id)

  @@definitions_array = []

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
    @id = @@definitions_array.length().+(1)
  end

  define_singleton_method(:all) do
    @@definitions_array
  end

  define_method(:save) do
    @@definitions_array.push(self)
  end

  define_singleton_method(:clear) do
    @@definitions_array = []
  end

  define_singleton_method(:find) do |id|
    matched_definition = nil
    @@definitions_array.each() do |definition|
      if definition.id() == id
        matched_definition = definition
      end
    end
    matched_definition
  end
end
