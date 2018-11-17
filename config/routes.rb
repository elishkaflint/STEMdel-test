Rails.application.routes.draw do
  resources :characters, :films
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :films do
    resources :characters
  end

end
