Rails.application.routes.draw do
  root :to => 'topics#index'

  resources :topics do
    resources :ailments, :except => [:show, :index]
  end

end
