Rails.application.routes.draw do
  root "progression#home"
  get "/quiz/:progression_type", to: "progression#quiz"
  post "/answer", to: "progression#answer"
end
