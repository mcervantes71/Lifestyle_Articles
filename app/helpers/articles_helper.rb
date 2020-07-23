module ArticlesHelper
  def recent_articles
    html = ''

    @recents.each do |article|
      html += "<article class='recent_article' style='background-image: url(" + article[:image] + ");'>"
      html += link_to article[:category_name], article_path(article[:category_id]), class: 'recent_category'
      html += "<h2 class='recent_title'>" + article[:title].truncate(30) + '</h2>'
      html += '</article>'
    end

    html.html_safe
  end

  def categories_articles
    html = ''

    @articles.each do |article|
      html += "<article class='article'>"
      html += "<div class='article_img' style='background-image: url(" + article.image + ");'></div>"
      html += "<div class='article_data'>"

      html += display_vote(article)

      html += "<h2 class='article_title'>" + article.title + '</h2>'
      html += "<p class='article_text'>" + article.text.truncate(150) + '</p>'
      html += "<h3 class='article_author'>" + article.author.name + '</h3>'
      html += '</div>'
      html += '</article>'
    end

    html.html_safe
  end
end
