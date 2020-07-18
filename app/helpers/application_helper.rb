module ApplicationHelper
  def categories_by_priority
    Category.order(priority: :desc).select(:id, :category_name)
  end
end
