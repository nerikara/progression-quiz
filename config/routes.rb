Rails.application.routes.draw do
  root "progression#home"
  get "/quiz", to: "progression#quiz"
  post "/answer", to: "progression#answer"
end
