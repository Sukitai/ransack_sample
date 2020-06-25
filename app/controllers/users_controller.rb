class UsersController < ApplicationController
  def index
    user = User.new(params_search_user)
    @users = user.search
  end

  private

  def params_search_user
    params.permit(:search_name, :search_age, :search_sex)
  end
end