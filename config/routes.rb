Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
    	member do
    		patch :complete
    	end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root "todo_lists#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
