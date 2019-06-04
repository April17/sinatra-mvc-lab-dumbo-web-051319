class PigLatinizer

  def piglatinize(string)
    ary = string.split
    ary2 = []
    ary.each do |ele|
      index = find_vowel(ele)
      ary2 << piglatinize_maker(ele, index)
    end
    ary2.join(" ")
  end
  def find_vowel(word)
    vowel = ["a","e","o","u","i"]
    for i in 0..word.length
      if vowel.include?(word[i].downcase)
        return i
      end
    end
  end
  def piglatinize_maker(word, index)
    if index == 0
      word << "way"
    else
      word << word[0...index]
      word << "ay"
      # binding.pry
      word[index..-1]
    end
  end

end
