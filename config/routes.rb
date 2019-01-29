Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'quotes#index'
  resources :quotes # Adding the resources :quotes line of code gave us a standard set of URLs to Create, Read, Update and Destroy (aka CRUD) for our quotes.
  get 'about', to: 'quotes#about' #We're basically saying, get the about URL and point it to our about action inside our quotes controller.
end
