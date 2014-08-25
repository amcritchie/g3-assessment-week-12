require 'rails_helper'

RSpec.describe "movies/index", :type => :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        :name => "Name",
        :year => "",
        :synopsis => "Synopsis",
        :user_id => ""
      ),
      Movie.create!(
        :name => "Name",
        :year => "",
        :synopsis => "Synopsis",
        :user_id => ""
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Synopsis".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
