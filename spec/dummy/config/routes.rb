Rails.application.routes.draw do
  get 'example/foo', to: 'example#foo'
  get 'example/action_with_params', to: 'example#action_with_params'
  get 'example/bar', to: 'example#bar'
end
