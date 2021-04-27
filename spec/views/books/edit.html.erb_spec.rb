require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "MyString",
      :author => "MyString",
      :categories => "MyString",
      :language => "MyString",
      :rating => "MyString",
      :description => "MyString",
      :publication_date => "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "input#book_categories[name=?]", "book[categories]"

      assert_select "input#book_language[name=?]", "book[language]"

      assert_select "input#book_rating[name=?]", "book[rating]"

      assert_select "input#book_description[name=?]", "book[description]"

      assert_select "input#book_publication_date[name=?]", "book[publication_date]"
    end
  end
end
