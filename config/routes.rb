Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root "category#index"
  resources "category" do
    resources :post, only: [:show]
  end
  get '/tintuc' => 'category#tintuc'
  get '/gioithieu' => 'category#gioithieu'
  get '/video' => 'category#video'
  get '/khachhang' => 'category#khachhang'
  get '/tatca' => 'category#tatca'
end
