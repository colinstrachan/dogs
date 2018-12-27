Rails.application.routes.draw do
  get "breeds", to: "breeds#index"

  get "breeds/:breed", to: "breeds#show", as: :breed

  root :to => "breeds#index"
end
