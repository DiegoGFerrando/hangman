# frozen_string_literal: true

def get_word(contents)
  word = contents[rand(contents.length)]
  puts word
  return get_word(contents) unless word.rstrip.length >= 5 && word.rstrip.length <= 12

  word
end

contents = File.readlines 'data/google-10000-english-no-swears.txt'

selected_word = get_word(contents)

puts selected_word
