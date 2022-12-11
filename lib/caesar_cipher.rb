# frozen_string_literal: true

# Shifts the character
#
# #shift_alphabet - takes a character and returns a shifted character if it is an alphabet
# @param character [String] the character to be shifted
# @param shift_factor [Number] the number for the character to be shifted
# @return [String] the shifted character
def shift_alphabet(character, shift_factor)
  # if the character is not an alphabet, do nothing
  return character unless character.match?(/[a-z]/i)

  # else add the shift factor to the ordinal number of the character
  shifted = character.ord + shift_factor
  # if the number is out of range, subtract total numbers of alphabets
  shifted.between?(91, 96) || shifted > 122 ? shifted -= 26 : shifted
  shifted.chr
end

# Takes a string and returns an encrypted string
#
# @param string [String] the original string to be encrypted
# @shift_factor [Number] the number for each character to be shifted
# @return [String] the encrypted string
def caesar_cipher(string, shift_factor)
  encrypted = ''
  string.each_char { |character| encrypted += shift_alphabet(character, shift_factor) }
  encrypted
end

puts caesar_cipher('What a string!', 5)
