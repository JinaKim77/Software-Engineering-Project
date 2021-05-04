Feature: search for books by author

  As a book fan
  So that I can find books with my favorite author
  I want to include and search on author information in books I enter

Background: books in database

    Given the following books exist:
  | title            | rating |     author     | publication_date |
  | The Lantern Men  | 4      | Elly Griffiths | 06-Feb-2020      |
  | Nomadland        | 4      | Jessica Bruder | 19-Sep-2017      |
  | Beyond           | 5      | Stephen Walker | 13-Apr-2015      |
  | Sorrow and Bliss | 4      | Meg Mason      | 02-Sep-2020      |
  | Hide and Seek    | 4      | Stephen Walker | 02-Sep-2020      |
  | Harry Potter     | 5      |                | 16-Nov-2001      |
  
  
Scenario: add author to existing book
  When I go to the edit page for "Beyond"
  And  I fill in "Author" with "Stephen Walker"
  And  I press "Update Book"
  Then the author of "Beyond" should be "Stephen Walker"
  
Scenario: find book with same author (happy path)
  Given I am on the details page for "Beyond"
  When  I follow "Find Books With Same Author"
  Then  I should be on the Similar Movies page for "Beyond"
  And   I should see "Hide and Seek"
  But   I should not see "Sorrow and Bliss"
  

Scenario: can't find similar movies if we don't know author (sad path)
  Given I am on the details page for "Harry Potter"
  Then  I should not see "Stephen Walker"
  When  I follow "Find Movies With Same Director"
  Then  I should be on the home page
  And   I should see "'Harry Potter' has no author info"
