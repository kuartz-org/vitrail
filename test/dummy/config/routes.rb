Rails.application.routes.draw do
  root to: "home#index"
  mount Lookbook::Engine => "/lookbook"
end
