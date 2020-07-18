module VotesHelper
  def vote(article)
    Vote.find_by(article: article, user: current_user)
  end
end
