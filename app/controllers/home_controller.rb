require 'd3_api_client'

class HomeController < ApplicationController
  def index
    @profile = D3ApiClient.new('Idmon', '2666', 'eu')
    @career = @profile.career
  end
end
