Given /the following books exist/ do |books_table|
  books_table.hashes.each do |book|
    Book.create book
  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  expect(page.body.index(e1) < page.body.index(e2))
end

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  rating_list.split(', ').each do |rating|
    step %{I #{uncheck.nil? ? '' : 'un'}check "ratings_#{rating}"}
  end
end

Then /I should see all the books/ do
  # Make sure that all the books in the app are visible in the table
  Book.all.each do |book|
    step %{I should see "#{book.title}"}
  end
end

Then(/^the author of "(.*)" should be "(.*)"$/) do |arg1, arg2|
  #pending # Write code here that turns the phrase above into concrete actions
  book = Book.find_by_title(arg1)
  expect(book.author).to eq arg2
end
