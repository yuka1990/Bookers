Rails.application.routes.draw do
  get 'list/new'
  get 'list/index'
  get 'list/show'
  get 'list/edit'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
