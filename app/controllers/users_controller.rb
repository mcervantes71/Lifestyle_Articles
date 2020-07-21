class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.joins(:articles).select('users.*, COUNT(articles.id) AS articles_count').group('users.id')
  end

  def show
    @user = User.find(params[:id])
  end
end
