Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/generate_blank'
  get 'welcome/generate_hardcoded'
  get 'welcome/user_entered'
  post 'welcome/process_info'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
