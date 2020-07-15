class VotesController < ApplicationController
  before_action :authenticate_user!

  def create
    @vote = current_user.votes.build(article_id: params[:article_id])

    if @vote.save
      a = Article.find(params[:article_id])
      c = a.category

      redirect_to article_path(c.id), notice: 'You voted an article.'
    else
      redirect_to root_path, alert: 'You cannot vote this article.'
    end
  end

  def destroy
    vote = Vote.find_by(user: current_user, article_id: params[:article_id])

    if vote
      vote.destroy
      redirect_to article_path, notice: 'You undo the vote.'
    else
      redirect_to root_path, alert: 'You cannot unvote the article that you did not vote before.'
    end
  end
end
