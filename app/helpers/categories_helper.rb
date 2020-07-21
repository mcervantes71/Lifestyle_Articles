module CategoriesHelper
  def categories_by_priority
    categories = Category.order(priority: :desc).select(:id, :category_name)
    html = ''

    categories.each do |category|
      html += link_to category.category_name, article_path(category.id), class: 'nav_link'
    end

    html.html_safe
  end
end
