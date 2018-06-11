Rails.application.routes.draw do
  root 'top#index'
  # root 'chat_rooms#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chat_rooms, only:[:show] do
    collection do
      post :confirm
    end
  end
  mount ActionCable.server => '/cable'
end