#!/usr/bin/env ruby

ALPHABET_LENGTH = "z".ord - "a".ord + 1

def caesar_cipher(message, shift)
  characters = message.split("")

  shifted_characters = characters.map do |character|
    if character.match?(/[a-z]/i)
      starting_ord = (character == character.upcase) ? "A".ord : "a".ord
      new_ord = (character.ord - starting_ord + shift) % ALPHABET_LENGTH + starting_ord
      new_ord.chr
    else
      character
    end
  end

  shifted_characters.join("")
end
