class Book
    attr_accessor :title

    def title=(new_title)
        @title = capitalize(new_title)
    end

    private
    def capitalize(title)
        little_words = %w[and over the a an in of]
        arr = title.split
        arr.map!.with_index do |word, index|
          if index == 0 || !little_words.include?(word)
            word.capitalize
          else
            word
          end
        end
        arr.join(' ')
    end
end
