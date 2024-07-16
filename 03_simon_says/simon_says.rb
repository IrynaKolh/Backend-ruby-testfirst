def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str, n=2)
    ("#{str} " * n).strip
end

def start_of_word(str, n)
    str[0..(n-1)]
end

def first_word(str)
    arr = str.split
    arr[0]
end

def titleize(str)
    little_words = %w[and over the]
    arr = str.split
    arr.map!.with_index do |word, index|
      if index == 0 || !little_words.include?(word)
        word.capitalize
      else
        word
      end
    end
    arr.join(' ')
end
  