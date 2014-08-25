require 'rails_helper'

RSpec.describe "movies/show", :type => :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :name => "Name",
      :year => "",
      :synopsis => "Synopsis",
      :user_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Synopsis/)
    expect(rendered).to match(//)
  end
end
