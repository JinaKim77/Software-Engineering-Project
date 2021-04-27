require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :title => "MyString",
      :rating => "MyString",
      :description => "MyString",
      :release_date => "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input#movie_title[name=?]", "movie[title]"

      assert_select "input#movie_rating[name=?]", "movie[rating]"

      assert_select "input#movie_description[name=?]", "movie[description]"

      assert_select "input#movie_release_date[name=?]", "movie[release_date]"
    end
  end
end
