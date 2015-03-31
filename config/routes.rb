Rails.application.routes.draw do
  devise_for :users
  root "pdfs#index"
  resources :pdfs

end

