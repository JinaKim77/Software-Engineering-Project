require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      :title => "MyString",
      :rating => "MyString",
      :description => "MyString",
      :release_date => "MyString"
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input#movie_title[name=?]", "movie[title]"

      assert_select "input#movie_rating[name=?]", "movie[rating]"

      assert_select "input#movie_description[name=?]", "movie[description]"

      assert_select "input#movie_release_date[name=?]", "movie[release_date]"
    end
  end
end
