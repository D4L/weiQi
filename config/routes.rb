WeiQi::Application.routes.draw do
  resources :boards do
    resources :peices do
    end
  end

  root :to => "boards#index"
end
