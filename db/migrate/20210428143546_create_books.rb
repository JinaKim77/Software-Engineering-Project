class CreateBooks < ActiveRecord::Migration
  def change
    create_table 'books' do |b|
      b.string 'title'
      b.string 'author'
      b.string 'Categories'
      b.string 'rating'
      b.text 'description'
      b.datetime 'publication_date'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      b.timestamps
    end
  end
end