Spree::Core::Engine.routes.append do
  namespace :admin do
    post :export_users_to_csv, to: 'users#export_users_to_csv'
    resources :rgpds
  end
  post :export_user_data_to_csv, to: 'users#export_user_data_to_csv'
end