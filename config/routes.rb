Timetable::Application.routes.draw do
  resources :lines
  resources :stations
  resources :stops
  root :to => 'lines#index'
end
