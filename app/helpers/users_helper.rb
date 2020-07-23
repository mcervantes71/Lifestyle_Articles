module UsersHelper
  def users_articles
    html = ''

    @users.each do |user|
      html += '<tr>'
      html += '<td>' + user.name + '</td>'
      html += '<td>' + get_counter(user) + '</td>'
      html += '</tr>'
    end

    html.html_safe
  end

  def user_articles
    html = ''

    html = '<table><thead><tr>'
    html += "<th class='label'>title</th>"
    html += "<th class='label'># votes</th>"
    html += "<th class='th_button'></th>"
    html += '</tr></thead><tbody>'

    current_user.articles.each do |article|
      html += '<tr>'
      html += '<td>' + article.title + '</td>'
      html += '<td>' + get_counter(article) + '</td>'
      html += "<td class='td_button'>"
      html += link_to 'Delete', article_path(article), method: :delete, class: 'button cancel'
      html += '</td>'
      html += '</tr>'
    end

    html += '</tbody>'
    html += '</table>'

    html.html_safe
  end
end
