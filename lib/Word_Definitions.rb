class Words
  attr_reader(:word, :id)

  @@words_array = []

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @id = @@words_array.length().+(1)
  end
end
