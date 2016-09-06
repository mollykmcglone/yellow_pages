Rails.application.routes.draw do
  resources :types do
    resources :businesses
  end
end
