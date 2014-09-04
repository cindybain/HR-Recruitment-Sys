module UsersHelper
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}/?s=22"
    image_tag(gravatar_url, alt: user.name, width: "22px", height: "22px", style: "margin-top:5px")
    #width="20px" height="22px" style=margin-top:13px
  end
  
  def gravatar_for_large(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}/?s=100"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end