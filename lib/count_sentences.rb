require 'pry'

class String

  def sentence?
    self.end_with?(".") 
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = 0
    punc = [".", "!", "?"]
    self.chars.each.with_index do |char, index|
      # puts char, index
      if punc.include?(char) && char != self[index+1]
        sentences += 1
      end
    end
    sentences
  end
    # self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
end