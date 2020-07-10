class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      flash.notice = "Article '#{@article.title}' Successfully Created!"

      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      flash.notice = "Article '#{@article.title}' Successfully Updated!"

      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @article = Article.destroy(params[:id])

    flash.notice = "Article '#{@article.title}' Successfully Deleted!"

    redirect_to user_path(current_user)
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image)
  end
end
