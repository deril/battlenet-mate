class HomeController < ApplicationController
  def index
    @battletag_name = 'Idmon'
    @battletag_code = 2666
    @host = 'http://eu.battle.net'
  end
end
