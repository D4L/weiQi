WeiQi::Application.routes.draw do
  resources :boards

  root :to => "boards#index"
end
