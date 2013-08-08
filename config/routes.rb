Madrichim::Application.routes.draw do
  
  resources :teachers

  resources :teens

  resources :admin_interview_forms

  resources :teacher_mid_year_forms

  resources :teen_mid_year_forms

  resources :teacher_end_year_forms

  resources :teen_re_app_forms

  # resources :teen_new_app_forms

  #resource :teen_new_app_form
  get "teen_new_app_form/new" => "teen_new_app_form#new"
  post "teen_new_app_form/new" => "teen_new_app_form#create"



  resources :users

  get "users/:code" => "users#new", as: :registration 

	get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  get "login" => "session#new"
  post "login" => "session#create"
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"

  root 'site#index'
end
