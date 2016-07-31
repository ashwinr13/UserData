Rails.application.routes.draw do



get 'users/index' => 'users#index'

get 'users/show' => 'users#show', as: :show_user

get 'users/new' => 'users#new'

get 'users/edit' => 'users#edit'

post 'users' => 'users#create', as: :create_user

patch 'users/edit' => 'users#update'

get 'users/delete' => 'users#delete'

delete 'users' => 'users#destroy'

root 'people#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
