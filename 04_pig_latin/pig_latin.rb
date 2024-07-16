def translate(str)
    vowels = %w[a e i o u]
    arr_str = str.split
  
    arr_str.map! do |word|
      if vowels.include?(word[0])
        word + "ay"
      else
        if word.start_with?("qu")
          prefix = "qu"
          rest = word[2..]
          word = rest + prefix + "ay"
        elsif word.include?("qu")
          index = word.index("qu")
          prefix = word[0..index+1]
          rest = word[(index+2)..]
          word = rest + prefix + "ay"
        else
          prefix = ""
          while !vowels.include?(word[0])
            prefix += word[0]
            word = word[1..]
          end
          word + prefix + "ay"
        end
      end
    end
  
    arr_str.join(" ")
  end
  