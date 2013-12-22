require 'd3_api_client'

class HomeController < ApplicationController
  before_filter :get_career

  def get_career
    @profile = D3ApiClient.new('Idmon', '2666', 'eu')
    @career = @profile.career
  end

  def index
  end

  def show
    @hero = @profile.hero(params[:id])
  end
end
