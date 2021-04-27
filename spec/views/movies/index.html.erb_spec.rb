require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        :title => "Title",
        :rating => "Rating",
        :description => "Description",
        :release_date => "Release Date"
      ),
      Movie.create!(
        :title => "Title",
        :rating => "Rating",
        :description => "Description",
        :release_date => "Release Date"
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Rating".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Release Date".to_s, :count => 2
  end
end
