Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/"=>"lessons#index"
  get "/survey"=>"class_surveys#new", as: :class_surveys
  #("/survey"=>"class_surveys#new", :as=>:class_surveys)
  post '/survey'=>'class_surveys#create'
  get "/lessons/new"=>'lessons#new', as: :lesson
  post "/lessons"=>'lessons#create'
  get "/lessons"=>"lessons#index"
  get "lessons/survey_results"=>'lessons#survey_results'
end
