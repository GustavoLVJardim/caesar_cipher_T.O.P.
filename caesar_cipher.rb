def caesar_cipher(string, length)  
  lower_alphabet = ("a".."z").to_a
  higher_alphabet = ("A".."Z").to_a
  new_string = [] 
  
  for char in string.chars
    if lower_alphabet.include?(char)
      new_char = lower_alphabet[(lower_alphabet.index(char) + length) % lower_alphabet.length]
      new_string.push(new_char)
    elsif higher_alphabet.include?(char)
      new_char = higher_alphabet[(higher_alphabet.index(char) + length) % higher_alphabet.length]
      new_string.push(new_char)
    else
      new_string.push(char)
    end
  end

  new_string.join
end

puts caesar_cipher("What a string!", 5)