class Book < ActiveRecord::Base
  def self.same_author_books(id)
    author = Book.find(id).author
    self.where(author: author)
  end
    
  def self.all_ratings
    ['1','2','3','4','5']
  end
  
  def self.ratings_to_show
    []
  end
  
  def self.with_ratings(ratings_list)
  end
end