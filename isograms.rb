def is_isogram (input_text)
    input_text = input_text.downcase
    letters_array = input_text.split('')
    unique_letters = []
    repeated_letters = []

  letters_array.each do |letter|
    if unique_letters.include?(letter)
      repeated_letters << letter
    else
      unique_letters << letter
    end
  end

  if repeated_letters.count == 0
    puts true
  else
    puts false
  end
end

is_isogram('Dermatoglyphics')
is_isogram("isogram")
is_isogram("documentary")

is_isogram("aba")
is_isogram("moOse")
is_isogram("isIsogram")