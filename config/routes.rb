Rails.application.routes.draw do

  root :to => "visitors#index"

  devise_for :user

  resources :teachers do
    get :subjects
  end

  resources :students do
    get :subjects
  end
  
  resources :subject_items
  resources :subject_item_notes
  
  get 'reports/subjects', to: 'reports#subjects', as: :report_subjects
  get 'about', to: 'pages#about', as: :pages_about
end
