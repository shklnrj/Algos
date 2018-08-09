require 'set'


def solution(char_set, length)
  substring = ""
  recursing(substring, char_set, length)
end

def recursing(word, char_set, length)
  if length == 0
    puts word
  end
  char_set.each do |c|
    new_word = word+c
    if length>0
      recursing(new_word, char_set, length-1)
    end
  end
end

first = Set.new
first.add('a')
first.add('b')
first.add('c')

solution(first, 3)
