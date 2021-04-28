# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Seed the RottenPotatoes DB with some movies.
more_books = [
  {:title => 'The Lantern Men', :rating => '4', :categories =>'Mystery', :language =>'English',
    :publication_date => '06-Feb-2020'},
  {:title => 'Nomadland', :rating => '4', :categories =>'Social Sciences', :language =>'English',
    :publication_date => '19-Sep-2017'},
  {:title => 'Beyond', :rating => '5', :categories =>'History', :language =>'English',
    :publication_date => '13-Apr-2015'},
  {:title => 'Sorrow and Bliss', :rating => '4', :categories =>'Fiction', :language =>'English',
    :publication_date => '02-Sep-2020'}
]

more_books.each do |book|
  Book.create!(book)
end
