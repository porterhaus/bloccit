Rails.application.routes.draw do
  #get 'comments_controller/create'

  devise_for :users
  resources :users, only: [:update]
  
  #resources :topics do
  #  resources :posts, except: [:index] do
  #    resources :comments, only: [:create, :destroy]
  #  end
  #end

  resources :topics do
   resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]

    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end



  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
 