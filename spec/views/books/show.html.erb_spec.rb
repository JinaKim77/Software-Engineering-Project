require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "Title",
      :rating => "Rating",
      :categories => "Categories",
      :language => "Language",
      :description => "Description",
      :publication_date => "Publication Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Rating/)
    expect(rendered).to match(/Categories/)
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Publication Date/)
  end
end
