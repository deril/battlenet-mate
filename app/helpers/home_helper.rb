module HomeHelper
  def battlenet_mate_url(host, battletag_name, battletag_code)
    "#{host}/api/d3/profile/#{battletag_name}-#{battletag_code}/"
  end

  def class_icon
    wow_class = @class_name.downcase.gsub(' ', '-')
    image_tag "http://media.blizzard.com/wow/icons/18/class_#{wow_class}.jpg"
  end
end
