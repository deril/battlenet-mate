class HomeController < ApplicationController
  def wow
    api = Battlenet.new :eu
    @character = api.character('Chamber of Aspects', 'Idmon', fields: 'titles')
    races = api.character_races['races']
    classes = api.character_classes['classes']

    title_pattern = @character['titles'].find { |title| title['selected'] }.try(:[], 'name')
    @full_name = title_pattern % @character['name'] if title_pattern
    @full_name ||= @character['name']

    @race_name = races.find { |race| race['id'] == @character['race']}['name']
    @class_name = classes.find { |c| c['id'] == @character['class']}['name']
  end

  def diablo
  end
end
