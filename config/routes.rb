Rails.application.routes.draw do

  root to: 'webpages#index'


  get    'webpages/index'
  get    'webpages/profile', to: 'webpages#profile'
  get    'webpages/study',   to: 'webpages#study'
  get    'webpages/member',  to: 'webpages#member'
  get    'webpages/contact', to: 'webpages#contact'
  post   'webpages/contact', to: 'webpages#contact_create'


  get    'users/new'
  get    'users/create'
  get    'users/destory'

  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get    'edit_result',    to: 'manages#edit_result'
  get    'result_edit',    to: 'manages#result_edit'
  post   'result_create',  to: 'manages#result_create'
  put    'result_update',  to: 'manages#result_update'
  delete 'result_delete',  to: 'manages#result_delete'

  get    'edit_img',       to: 'manages#edit_img'
  get    'img_edit',       to: 'manages#img_edit'
  post   'img_create',     to: 'manages#img_create'
  put    'img_update',     to: 'manages#img_update'
  delete 'img_delete',     to: 'manages#img_delete'

  get    'edit_news',       to: 'manages#edit_news'
  get    'news_edit',       to: 'manages#news_edit'
  post   'news_create',     to: 'manages#news_create'
  put    'news_update', to: 'manages#news_update'
  delete 'news_delete', to: 'manages#news_delete'

  get    'edit_member',       to: 'manages#edit_member'
  get    'member_edit',        to: 'manages#member_edit'
  post   'member_create',     to: 'manages#member_create'
  put    'member_update',     to: 'manages#member_update'
  delete 'member_delete', to: 'manages#member_delete'

  resources :manages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
