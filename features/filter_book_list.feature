Feature: display list of books filtered by rating
 
  As a good book reader
  So that I can choose the best book 
  I want to see books matching only certain ratings

Background: books have been added to database

  Given the following books exist:
  | title            | rating |     author     | publication_date |
  | The Lantern Men  | 4      | Elly Griffiths | 06-Feb-2020      |
  | Nomadland        | 4      | Jessica Bruder | 19-Sep-2017      |
  | Beyond           | 5      | Stephen Walker | 13-Apr-2015      |
  | Sorrow and Bliss | 2      | Meg Mason      | 02-Sep-2020      |
  | Hide and Seek    | 4      | Stephen Walker | 02-Sep-2020      |
  | Good Morning     | 5      |                | 16-Nov-2001      |
  
  And  I am on the Final Project home page
  #Then 6 seed books should exist
  
  Scenario: restrict to books with '1' or '2' ratings
  Given I check the following ratings: 1, 2
  And I uncheck the following ratings: 3, 4, 5
  When I press "Refresh"
  Then I should see "Sorrow and Bliss"
  Then I should see "" 
  
  Scenario: all ratings selected
  Given I check the following ratings: 1, 2, 3, 4, 5
  When I press "Refresh"
  Then I should see "Beyond"