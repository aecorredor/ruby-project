class Book
  attr_accessor :book, :title

  def title=(title)
    result = []
    title.split.each_with_index do |word, index|
      if index == 0 || !is_exception?(word)
        result << word.to_s.capitalize!
      else
        result << word.to_s
      end
    end
    @title = result.join(' ')
  end
end

def is_exception?(word)
  %w(the a an and in of).include?(word) ||
    %w(0 1 2 3 4 5 6 7 8 9).include?(word[0])
end
