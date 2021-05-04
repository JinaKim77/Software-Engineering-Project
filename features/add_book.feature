Feature: User can manually add a book

Scenario: Add a book (happy path)
  Given I am on the Final Project homepage
  When I follow "New Book"
  Then I should be on the Create New Book page
  When I fill in "Title" with "Beyond"
  And I fill in "Rating" with "4"
  And I press "Create Book"
  Then I should be on the Show Book Details page
  And I should see "Beyond"