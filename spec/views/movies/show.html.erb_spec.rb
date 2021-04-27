require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :title => "Title",
      :rating => "Rating",
      :description => "Description",
      :release_date => "Release Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Rating/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Release Date/)
  end
end
