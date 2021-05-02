class Book < ActiveRecord::Base
    
  attr_accessor :title, :author, :rating, :Categories, :publication_date
  
  def self.all_ratings
    %w(1 2 3 4 5)
  end
   
end