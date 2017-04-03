Rails.application.routes.draw do

  root 'access#login'

  get 'access/home'

  get 'access/contact'

  get 'access/about'

  get 'access/login'

  get 'access/logout'

  get 'filter_students/filter'

  get 'filter_students/viewfilter'

  post 'filter_students/afilter'

  post 'filter_students/sendemail'

  post 'access/chklogin'

  get 'students/editpwd'

  resources :admins
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
