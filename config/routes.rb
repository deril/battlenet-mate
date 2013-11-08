BattlenetMate::Application.routes.draw do
  match '/home/wow'=> 'home#wow'
  match '/home/diablo'=> 'home#diablo'

  root :to => 'home#wow'
end
