class HomepageController < ApplicationController
  skip_before_action :ensure_authenticated_user
  def show
    @user =
    @movies = Movie.all
  end
end