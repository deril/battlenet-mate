module HomeHelper
  def battlenet_mate_url(host, battletag_name, battletag_code)
    "#{host}/api/d3/profile/#{battletag_name}-#{battletag_code}/"
  end
end
