Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :exercises
      resources :users
    end
  end
end
