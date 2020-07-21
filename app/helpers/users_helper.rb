module UsersHelper
  def user_articles
    html = ''

    if current_user.articles.count.zero?
      html = "<p class='label'>You have 0 Articles</p>"
    else
      html = '<table><thead><tr>'
      html += "<th class='label'>title</th>"
      html += "<th class='label'># votes</th>"
      html += "<th class='th_button'></th>"
      html += '</tr></thead><tbody>'

      current_user.articles.each do |article|
        html += '<tr>'
        html += '<td>' + article.title + '</td>'
        html += '<td>' + article.votes.count.to_s.html_safe + '</td>'
        html += "<td class='td_button'>"
        html += link_to 'Delete', article_path(article), method: :delete, class: 'button cancel'
        html += '</td>'
        html += '</tr>'
      end

      html += '</tbody>'
      html += '</table>'
    end

    html.html_safe
  end

  def users_articles
    html = ''

    @users.each do |user|
      html += '<tr>'
      html += '<td>' + user.name + '</td>'
      html += '<td>' + user.articles_count.to_s.html_safe + '</td>'
      html += '</tr>'
    end

    html.html_safe
  end
end
