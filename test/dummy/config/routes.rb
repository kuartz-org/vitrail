Rails.application.routes.draw do
  mount Vitrail::Engine => "/vitrail"

  root to: "home#index"
end
