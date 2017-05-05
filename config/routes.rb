Rails.application.routes.draw do
  get 'test/test'
  get '/', to: 'test#test'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
