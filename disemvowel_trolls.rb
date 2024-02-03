def disemvowel_trolls(input)
    vowels = "aAeEiIoOuU"
    result = ""
  
    input.each_char do |letter|
      result += letter unless vowels.include?(letter)
    end
  
    puts result
  end

  disemvowel_trolls("Como Estas?")
  disemvowel_trolls("HI PO")
  disemvowel_trolls("This site is for losers LOL!")