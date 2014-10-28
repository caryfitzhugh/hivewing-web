Rails.application.routes.draw do
  devise_for :beekeepers
  root "welcome#index"

  get "/workers/new" => "workers#new"#, :as => :new_worker
end
