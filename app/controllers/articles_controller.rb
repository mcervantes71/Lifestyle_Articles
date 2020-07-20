class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_article, only: %i[destroy]

  def index
    @featured = Article.featured
    @recents = Article.recents
  end

  def show
    @articles = Article.joins(:categories).where("categories.id = #{params[:id]}").ordered
    @category_id = params[:id]
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      flash.notice = "Article '#{@article.title}' Successfully Created!"

      unless params[:categorization].nil?
        params[:categorization][:categories].each do |category_id|
          c = @article.categorization.build(category_id: category_id)
          c.save
        end
      end

      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @article.destroy

    flash.notice = "Article '#{@article.title}' Successfully Deleted!"

    redirect_to user_path(current_user)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :text, :image, :category_id)
  end
end
