Rails.application.routes.draw do
  post "/contacts" => "contacts#create"
  patch "/contacts/:id" => "contacts#update"
  post "/bookings" => "bookings#create"
  resources :bookings
end
