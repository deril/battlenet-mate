class HomeController < ApplicationController
  def wow
    api = Battlenet.new :eu
    @character = api.character('Chamber of Aspects', 'Idmon').to_hash
  end

  def diablo
  end
end
