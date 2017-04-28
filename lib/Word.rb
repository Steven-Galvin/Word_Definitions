class Words
  attr_reader(:word, :id, :definitions)

  @@words_array = []

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @id = "word".+((@@words_array.length().+(1)).to_s)
    @definitions = []
  end

  define_singleton_method(:all) do
    @@words_array
  end

  define_method(:save) do
    @@words_array.push(self)
  end

  define_singleton_method(:clear) do
    @@words_array = []
  end

  define_singleton_method(:find) do |id|
    matched_word = nil
    @@words_array.each() do |word|
      if word.id() == id
        matched_word = word
      end
    end
    matched_word
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end
end
