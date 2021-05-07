module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :blog, BlogType, null: false
    field :author, AuthorType, null: true
    field :title, String, null: true
    field :content, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
