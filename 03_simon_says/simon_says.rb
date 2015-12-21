def echo(message)
  message.to_s
end

def shout(message)
  message.to_s.upcase
end

def repeat(message, num_times = 2)
  result = (message + ' ') * (num_times - 1)
  result += message
end

def start_of_word(word, num_letters)
  word[0..(num_letters - 1)]
end

def first_word(sentence)
  sentence.split(' ').first
end

def titleize(sentence)
  result = []
  sentence.split(' ').each_with_index do |word, index|
    if word.length > 3 || index == 0
      result << word.capitalize
    else
      result << word
    end
  end
  result.join(' ')
end
