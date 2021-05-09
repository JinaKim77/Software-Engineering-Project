Feature: display list of books sorted by different criteria

  As a good reader
  So that I can quickly see books based on my preferences
  I want to see books sorted by title or release date

Background: books have been added to database

  Given the following books exist:
  | title            | rating |     author     | publication_date |
  | The Lantern Men  | 4      | Elly Griffiths | 06-Feb-2020      |
  | Nomadland        | 4      | Jessica Bruder | 19-Sep-2017      |
  | Beyond           | 5      | Stephen Walker | 13-Apr-2015      |
  | Sorrow and Bliss | 2      | Meg Mason      | 02-Sep-2020      |
  | Hide and Seek    | 4      | Stephen Walker | 02-Sep-2020      |
  | Good Morning     | 5      |                | 16-Nov-2001      |
  
  And I am on the Final Project home page
  
  Scenario: sort books alphabetically
  When I follow "Book Title" 
  Then I should be on the Final Project home page
  And I should see "Beyond"

Scenario: sort books in increasing order of publication date
  When I follow "Publication Date" 
  Then I should be on the Final Project home page
  And I should see "Beyond"