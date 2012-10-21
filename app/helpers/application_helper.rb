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
    id = Digest::MD5::hexdigest(i.email.downcase)
    url = "https://secure.gravatar.com/avatar/#{id}?d=identicon"
    image_tag(url, alt: i.name, class: "gravatar")
  end
end
