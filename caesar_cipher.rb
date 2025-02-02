alphabet = ("a".."z").to_a

#any_number = 1
#print alphabet
#puts alphabet[-1 + any_number]

any_string = 'zaza'
new_string = []

for char in any_string.chars
  if alphabet.include?(char)
    new = alphabet[alphabet.index(char) + 1]
    new_string.push(new)
  end
end

print "new_string: #{new_string}"
 