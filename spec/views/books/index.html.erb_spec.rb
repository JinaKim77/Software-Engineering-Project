require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :author => "Author",
        :rating => "Rating",
        :Categories => "Categories",
        :description => "Description",
        :publication_date => "Publication Date"
      ),
      Book.create!(
        :title => "Title",
        :author => "Author",
        :rating => "Rating",
        :Categories => "Categories",
        :description => "Description",
        :publication_date => "Publication Date"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Rating".to_s, :count => 2
    assert_select "tr>td", :text => "Categories".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Publication Date".to_s, :count => 2
  end
end
