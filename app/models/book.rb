class Book < ActiveRecord::Base
    
  #attr_accessible :title, :author, :rating, :Categories, :publication_date
  
  def self.all_ratings
    #%w(1 2 3 4 5)
    [1,2,3,4,5]  
  end
    
  def self.same_author_books(id)
    author = Book.find(id).author
    self.where(author: author)
  end
   
end