require 'rails_helper'

RSpec.describe "movies/new", :type => :view do
  before(:each) do
    assign(:movie, Movie.new(
      :name => "MyString",
      :year => "",
      :synopsis => "MyString",
      :user_id => ""
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input#movie_name[name=?]", "movie[name]"

      assert_select "input#movie_year[name=?]", "movie[year]"

      assert_select "input#movie_synopsis[name=?]", "movie[synopsis]"

      assert_select "input#movie_user_id[name=?]", "movie[user_id]"
    end
  end
end
