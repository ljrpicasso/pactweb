module ApplicationHelper

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div data-alert class="alert-box alert radius">
      <a href='' class="close" data-dismiss="alert">&times;</a>
      #{messages}
    </div>
    HTML
    html.html_safe
  end

end
