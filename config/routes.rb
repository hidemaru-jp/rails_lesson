Rails.application.routes.draw do
  
  devise_for :users,controllers:{
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  devise_for :admin,skip:[:registrations,:passwords],controllers:{
    sessions:"admin/sessions"
  }

  root to: 'homes#top'
  get '/about' => 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end