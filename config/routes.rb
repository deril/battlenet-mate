BattlenetMate::Application.routes.draw do
  root :to => 'home#wow'
  match '/home/diablo'=> 'home#diablo'
end
