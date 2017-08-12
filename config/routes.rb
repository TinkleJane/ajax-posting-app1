Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/jquery-1" => "pages#jquery_1"
  get "/jquery-2" => "pages#jquery_2"
  get "/jquery-3" => "pages#jquery_3"
  get "/jquery-4" => "pages#jquery_4"
  get "/jquery-5" => "pages#jquery_5"
  get "/jquery_6" => "pages#jquery_6"
  get "/jquery-7" => "pages#jquery_7"

  resources :posts do
    member do
      post "like" => "posts#like"
      post "unlike" => "posts#unlike"
      post "collect" => "posts#collect"
      post "discollect" => "posts#discollect"
    end
  end
  root "posts#index"
end
