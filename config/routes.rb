BattlenetMate::Application.routes.draw do
  root :to => 'home#index'

  match ':controller/:action/:id/'
end
