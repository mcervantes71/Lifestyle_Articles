class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @list = User.users_list
  end

  def show
    @list = User.user_articles_list(params[:id])
  end
end
