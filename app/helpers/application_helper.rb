module ApplicationHelper
  # Renders base title if not provided.
  def full_title(page_title)
    base_title = "Easy Check | Chili's"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar(i)
    gravatar_id = Digest::MD5::hexdigest(i.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: i.name, class: "gravatar")
  end
end
