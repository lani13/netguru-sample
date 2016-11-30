Rails.application.routes.draw do

  root :to => "visitors#index"

  devise_for :user

  resources :teachers

  resources :students do
    get :subjects
  end
  
  resources :subject_items
  resources :subject_item_notes
  
  resources :reports do
    resources :subjects
  end
end
