require 'rails_helper'

RSpec.describe "movies/edit", :type => :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :name => "MyString",
      :year => "",
      :synopsis => "MyString",
      :user_id => ""
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input#movie_name[name=?]", "movie[name]"

      assert_select "input#movie_year[name=?]", "movie[year]"

      assert_select "input#movie_synopsis[name=?]", "movie[synopsis]"

      assert_select "input#movie_user_id[name=?]", "movie[user_id]"
    end
  end
end
