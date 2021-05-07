Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/playground', graphql_path: '/graphql' if Rails.env.development?
  post '/graphql', to: 'graphql#execute'
end
