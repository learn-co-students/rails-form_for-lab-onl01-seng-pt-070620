Rails.application.routes.draw do
  resources :school_class, only: [:new]
end
