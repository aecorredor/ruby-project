def reverser
  sentences = yield
  sentences.split.each(&:reverse!).join(' ')
end

def adder(number = 1)
  yield + number
end

def repeater(repeat = 1)
  repeat.times { yield }
end
