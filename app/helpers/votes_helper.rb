module VotesHelper
  def display_vote(article)
    vote = Vote.find_by(article: article, user: current_user)
    html = ''

    if vote
      html += link_to article_vote_path(article_id: article.id), method: :delete do
        content_tag(:span, article.votes.count.to_s.html_safe + ' ' + content_tag(:i, '', class: 'fas fa-thumbs-up'), class: 'like liked')
      end
    else
      html += link_to article_votes_path(article_id: article.id, category_id: @category_id), method: :post do
        content_tag(:span, article.votes.count.to_s.html_safe + ' ' + content_tag(:i, '', class: 'fas fa-thumbs-up'), class: 'like')
      end
    end

    html.html_safe
  end
end
