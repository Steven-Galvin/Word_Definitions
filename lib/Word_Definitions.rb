class Words
  attr_reader(:word, :id)

  @@words_array = []

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @id = @@words_array.length().+(1)
  end

  define_singleton_method(:all) do
    @@words_array
  end

  define_method(:save) do
    @@words_array.push(self)
  end
end
