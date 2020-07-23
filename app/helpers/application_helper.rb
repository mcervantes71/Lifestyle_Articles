module ApplicationHelper
  def flash_messages
    html = ''

    if notice.present?
      html += "<div class='flash notice'>"
      html += '<p>' + notice + '</p>'
      html += '</div>'
    end

    if alert.present?
      html += "<div class='flash alert'>"
      html += '<p>' + alert + '</p>'
      html += '</div>'
    end

    html.html_safe
  end

  def error_messages(resource)
    html = ''

    if resource.errors.any?
      html += '<div>'
      html += "<h2 class='error_title'><span class='error_number'>"
      html += pluralize(resource.errors.count.to_s.html_safe, 'error') + '</span> prohibited from being saved:</h2>'
      html += "<ul class='errors_list'>"

      resource.errors.full_messages.each do |message|
        html += "<li class='error_list_item'>" + message + '</li>'
      end

      if @minimum_password_length
        html += "<li class='error_list_item'>(" + @minimum_password_length + ' characters minimum)</li>'
      end

      html += '</ul></div>'
    end

    html.html_safe
  end

  def session_links
    html = ''

    if current_user
      html += "<div class='user'>"
      html += "<img class='user_img' src='" + asset_path('user.png') + "'>"
      html += "<ul class='list'>"
      html += link_to user_path(current_user), class: 'list_link' do
        content_tag(:li, 'Dashboard', class: 'li')
      end
      html += link_to new_article_path, class: 'list_link' do
        content_tag(:li, 'New Article', class: 'li')
      end
      html += link_to destroy_user_session_path, method: :delete, class: 'list_link' do
        content_tag(:li, 'Sign Out', class: 'li')
      end
      html += '</ul></div>'
    else
      html += link_to 'LogIn', new_user_session_path, class: 'nav_link'
      html += link_to 'Register', new_user_registration_path, class: 'nav_link'
    end

    html.html_safe
  end
end
