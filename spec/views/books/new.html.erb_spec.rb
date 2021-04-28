require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyString",
      :rating => "MyString",
      :categories => "MyString",
      :language => "MyString",
      :description => "MyString",
      :publication_date => "MyString"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_rating[name=?]", "book[rating]"

      assert_select "input#book_categories[name=?]", "book[categories]"

      assert_select "input#book_language[name=?]", "book[language]"

      assert_select "input#book_description[name=?]", "book[description]"

      assert_select "input#book_publication_date[name=?]", "book[publication_date]"
    end
  end
end
