Rails.application.routes.draw do
  resources :birds, only: [:show,:create,:index,:destroy,:update]
  patch "/birds/:id/like", to: "birds#increment_likes"
end
