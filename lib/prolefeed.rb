class Prolefeed
  attr_reader :book_ends, :story
  def initialize
    @book_ends = []
    @story = []
  end

  def add_to_bookends(string)
    self.book_ends << string
  end

  def add_to_story(string)
    self.story << string
  end

  def generate
    generated_story = []
    shuffled_bookends = book_ends.shuffle
    shuffled_story = story.shuffle
    introduction = shuffled_bookends.pop unless shuffled_bookends.empty?
    conclusion = shuffled_bookends.pop unless shuffled_bookends.empty?
    shuffled_story.unshift(introduction).push(conclusion)
  end
end
