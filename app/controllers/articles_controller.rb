class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def index
    @articles = Article.all
  end

  def show
    @articles = Article.joins(:categories).where(categories: { category_name: params[:id] }).ordered
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      flash.notice = "Article '#{@article.title}' Successfully Created!"

      @category = @article.categories.build(category_name: params[:category][:category_name])
      @category.save

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

      @category = Category.find(@article.id)
      @category.category_name = params[:categories][:category_name]
      @category.save

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
    params.require(:article).permit(:title, :text, :image, categories_attributes: [:category_name])
  end
end
