# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Seed the RottenPotatoes DB with some movies.
more_books = [
  {:title => 'The Lantern Men',:author => 'Elly Griffiths', :rating => '4', :Categories => 'Mystery',
    :publication_date => '06-Feb-2020'},
  {:title => 'Nomadland', :author => 'Jessica Bruder', :rating => '4', :Categories => 'Social Sciences',
    :publication_date => '19-Sep-2017'},
  {:title => 'Beyond',:author => 'Stephen Walker', :rating => '5', :Categories => 'History',
    :publication_date => '13-Apr-2015'},
  {:title => 'Sorrow and Bliss', :author => 'Meg Mason', :rating => '4', :Categories => 'Fiction', 
    :publication_date => '02-Sep-2020'}
]

more_books.each do |book|
  Book.create!(book)
end
