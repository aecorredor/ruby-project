def translate(sentence)
  words = sentence.split(' ')
  result = []
  words.each do |word|
    first_letter = word[0]
    if %w(a e i o u A E I O U).include?(word[0])
      word << 'ay'
    elsif %w(q Q).include?(word[0]) && word[1] == 'u'
      word = word[2..(word.length)] + 'quay'
    elsif %w(q Q).include?(word[1]) && word[2] == 'u'
      word = word[3..(word.length)] + word[0..2] + 'ay'
    elsif ! %w(a e i o u A E I O U).include?(word[1])
      if ! %w(a e i o u A E I O U).include?(word[2])
        word = word[3..(word.length)] + word[0..2] + 'ay'
      else
        word = word[2..(word.length)] + word[0..1] + 'ay'
      end
    else
      word = word[1..(word.length)] + word[0] + 'ay'
    end
    word.capitalize! if first_letter == first_letter.upcase
    result << word
  end
  result.join(' ')
end
