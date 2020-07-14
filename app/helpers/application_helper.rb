module ApplicationHelper
  def vote(article)
    Vote.find_by(article: article, user: current_user)
  end

  def categories_by_priority
    Article.priority
  end
end
