Rails.application.routes.draw do
  root "welcome#index"

  get "/workers/new" => "workers#new"#, :as => :new_worker
end
