class D3ApiClient
  def initialize(battletag_name, battletag_code, region)
    @battletag_name = battletag_name
    @battletag_code = battletag_code
    @host = 'http://%s.battle.net/' % region
  end

  def career
    request = "#{@host}api/d3/profile/#{@battletag_name}-#{@battletag_code}/"

    Rails.logger.info "D3 Career Profile API request: #{request}"
    response = HTTParty.get(request)
  end

  def hero(id)
    request = "#{@host}api/d3/profile/#{@battletag_name}-#{@battletag_code}/hero/#{id}"

    Rails.logger.info "D3 Hero Profile API request: #{request}"
    response = HTTParty.get(request)
  end
end
